require 'rspec'
require 'pry'

def name_match(known_aliases, name_submitted)
  cast_name(name_submitted) 
  known_aliases.map do |known_alias|
    cast_alias(known_alias)
    first_match? && middle_match? && last_match?
  end.any?(true)
end 

def fml(string)
  name = string.split
  if name.count == 3
    {first: name[0], middle: name[1], last: name[2]}
  else
    {first: name[0], last: name[1]}
  end
end 

def cast_name(name)
  @name = fml(name)
end

def cast_alias(known_alias)
  @known_alias = fml(known_alias) 
end

def first_match?
  @name[:first].eql?(@known_alias[:first]) || transposed?
end

def middle_match?
  return true if middle_name_missing?
  return middle_initial_matching? if middle_initial_present?
  @name[:middle].eql?(@known_alias[:middle]) || middle_transposed?
end

def last_match?
  @name[:last].eql?(@known_alias[:last])
end

def middle_name_missing?
  @name[:middle].nil? || @known_alias[:middle].nil?
end

def middle_initial_matching?
  @name[:middle][0].eql?(@known_alias[:middle][0]) || @known_alias[:first][0].eql?(@name[:middle][0])
end

def middle_initial_present?
  @name[:middle].length.eql?(1) || @known_alias[:middle].length.eql?(1)
end

def transposed?
  @name[:first].eql?(@known_alias[:middle]) 
end

def middle_transposed?
  @name[:middle].eql?(@known_alias[:first])
end  





describe 'name matching' do
  context 'exact match' do
    known_aliases = ['Alphonse Gabriel Capone', 'Al Capone']

    it 'should match for a known alias' do
      expect(name_match(known_aliases, 'Alphonse Gabriel Capone')).to eq(true)
      expect(name_match(known_aliases, 'Al Capone')).to eq(true)
      expect(name_match(known_aliases, 'Alphonse Francis Capone')).to eq(false)
    end
  end

   context 'middle name missing (known alias)' do
     known_aliases = ['Alphonse Capone']

     it 'matches with missing middle name' do
       expect(name_match(known_aliases, 'Alphonse Gabriel Capone')).to eq(true)
       expect(name_match(known_aliases, 'Alphonse Francis Capone')).to eq(true)
       expect(name_match(known_aliases, 'Alexander Capone')).to eq(false)
     end
   end

  context 'Middle name missing (on record name)' do
    known_aliases = ['Alphonse Gabriel Capone']

    it 'does' do
      expect(name_match(known_aliases, 'Alphonse Capone')).to eq(true)
      expect(name_match(known_aliases, 'Alphonse Francis Capone')).to eq(false)
      expect(name_match(known_aliases, 'Alexander Capone')).to eq(false)
    end
  end

  context 'middle name sanity check' do
    known_aliases = ['Alphonse Gabriel Capone', 'Alphonse Francis Capone']
    it 'does' do
      expect(name_match(known_aliases, 'Alphonse Gabriel Capone')).to eq(true)
      expect(name_match(known_aliases, 'Alphonse Francis Capone')).to eq(true)
      expect(name_match(known_aliases, 'Alphonse Edward Capone')).to eq(false)
    end
  end

  context 'Middle initial matches middle name' do
    known_aliases = ['Alphonse Gabriel Capone', 'Alphonse F Capone']
    it 'does' do
      expect(name_match(known_aliases, 'Alphonse G Capone')).to eq(true)
      expect(name_match(known_aliases, 'Alphonse Francis Capone')).to eq(true)
      expect(name_match(known_aliases, 'Alphonse E Capone')).to eq(false)
      expect(name_match(known_aliases, 'Alphonse Edward Capone')).to eq(false)
      expect(name_match(known_aliases, 'Alphonse Gregory Capone')).to eq(false)
    end
  end

  context 'First name and middle name can be transposed' do
    known_aliases = ['Alphonse Gabriel Capone']
    it 'does' do
      expect(name_match(known_aliases, 'Gabriel Alphonse Capone')).to eq(true)
      expect(name_match(known_aliases, 'Gabriel A Capone')).to eq(true)
      expect(name_match(known_aliases, 'Gabriel Capone')).to eq(true)
      expect(name_match(known_aliases, 'Gabriel Francis Capone')).to eq(false)
    end
  end

  context 'Last name cannot be transposed' do
    known_aliases = ['Alphonse Gabriel Capone']
    it 'does' do
      expect(name_match(known_aliases, 'Alphonse Capone Gabriel')).to eq(false)
      expect(name_match(known_aliases, 'Capone Alphonse Gabriel')).to eq(false)
      expect(name_match(known_aliases, 'Capone Gabriel')).to eq(false)
    end
  end
end