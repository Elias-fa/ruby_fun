require 'pry'



# arr = ['string', "string", ["nested array with string"], :my_symbol]
#puts arr[2]

my_regexp = /[abc]/
my_string = '12atest'

#puts my_string =~ my_regexp
#will give the position of the first appearance of the letter a in the regexp

# puts 'Enter a number:'
# user_input = gets.chomp.to_i

# if user_input <= 5
#   puts arr[2]
# elsif user_input > 5
#   puts my_string =~ my_regexp
# else
#   puts "this range isn't a number"
# end

# puts 'Odd!' if user_input.odd?
# puts 'Even!' if user_input.even?
# puts user_input.odd? ? 'Odd!' : 'Even!'

# if user_input.odd?
#   puts arr[2]
# else
#   puts my_string =~ my_regexp
# end


# family = {
#   wife: 23,
#   child: 1,
#   husband: 25
# }

# puts 'Enter the member of the family:'
# member = gets.strip.to_sym  #strip takes out all trailing white spaces

# # puts family[member]
# puts family.key?(member) ? "Age is: #{family[member]}" : "I don't know whom you are looking for..."




# puts "Choose cat, dog, or cow: "
# animal = $stdin.gets.chomp

# case animal
#   when 'cat'
#     puts "meow"
#   when 'dog'
#     puts "woof"
#   when 'cow'
#     puts "moo"
#   else
#     puts 'i dunno'
#   end


# predicate method will return a boolean
# def palindrome?(string)
#   normalized_string = string.gsub(/\W/, '').downcase
#   return normalized_string == normalized_string.reverse
# end

# puts palindrome?('My name is Elias!')



# i = 0
# new_array = [1, 2, 3, 4]

# while i < new_array.length
#   puts "Element: #{new_array[i]}"
#   i += 1
# end

# until i >= new_array.length
#   puts "Element: #{new_array[i]}"
#   i += 1
# end


# array_new = (1..5).to_a

# array_new.each do |a|
#   puts "Element: #{a}"
# end



# 5.times do |i|
#   puts "Element: #{i}"
# end


# 1.upto(10) do |i|
#   puts "This is element #{i}"
# end

# 10.downto(1) do |i|
#   puts "This is element #{i}"
# end

# 3.upto(7) { |i| puts i }
# 3.upto(7) { |i| puts "This number: #{i}" }


# loop do
#   puts 'working...'
#   break if rand(10) > 5
# end 

#below is how you can iterate over a hash
# {key: 'value', other_key: 10}.each do |key, value|
#   puts "Key: #{key}"
#   puts "Value: #{value}"
# end

#below range 1-5 is made into an array and each value is individually mapped out with string interpolation.
# (1..5).to_a.map {|i| puts "Each is mapped: #{i}"}
# (1..5).to_a.map {|i| puts i * 2}

# map_array = (1..5).to_a.map { |i| i * 2 }
# puts map_array.inspect

# map_array2 = %w(apple banana cherry).map.with_index do |element, index|
#   "Element #{index + 1}: #{element}"
# end
# # Element 1: apple
# puts map_array2.inspect

# above was part of lecture on ruby cycles



