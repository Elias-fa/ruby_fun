require 'pry'



# @vowels = ['a', 'e', 'i', 'o', 'u'] #@ symbol turned this into an instance variable so we can use this object outside the method used.
# sentence = "this has 4 vowels"



# def vowel_count(ex_str)
#   print ex_str.split("").select { |l| @vowels.any?(l) }.count
# end



# vowel_count(sentence)

# class Paul

#   LOVE_PHRASE = "I LOVE PAUL"

#   def i_love_paul(start, stop)
#     start.downto(stop) {|love| puts paul_love(love)}
#   end

#   def paul_love(the_love)
#     LOVE_PHRASE
#   end

# end

# Paul.new.i_love_paul(99, 1)

# 100.times do 
#   puts "I LOVE PAUL"
# end

# def isogram(given_string)
#   given_string.split.match?(given_string.split)
# end

my_string = 'dor'

def isogram(given_string)
  @my_string = given_string
  return true if isogram?
  downcase_string = @my_string.downcase
  return false if downcase_string.split('').map { |i| downcase_string.count(i) }.any?(2) == true
end

def isogram?
  @my_string.empty? 
end

puts isogram(my_string)




# puts isogram?

# puts my_string.downcase


# def double_letter(given_string)
#   downcase_string = given_string.downcase
#   downcase_string.split('').map { |i| downcase_string.match?(i * 2) }.any?(true)
# end

# puts double_letter(my_string)

# above code will detect the same character repeated consecutively. not if the string word contains the same character 
# twice even separated by other characters.
