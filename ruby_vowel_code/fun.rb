
@vowels = ['a', 'e', 'i', 'o', 'u'] #@ symbol turned this into an instance variable so we can use this object outside the method used.
sentence = "this has 4 vowels"



def vowel_count(ex_str)
  print ex_str.split("").select {|l| @vowels.any?(l)}.count
end



vowel_count(sentence)

class Paul

  LOVE_PHRASE = "I LOVE PAUL"

  def i_love_paul(start, stop)
    start.downto(stop) {|love| puts paul_love(love)}
  end

  def paul_love(the_love)
    LOVE_PHRASE
  end

end

Paul.new.i_love_paul(99, 1)

100.times do 
  puts "I FUCKING LOVE PAUL"
end



