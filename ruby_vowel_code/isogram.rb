# An isogram is a word that has no repeating letters, consecutive or non-consecutive. 
# Implement a function that determines whether a string that contains only letters is 
# an isogram. Assume the empty string is an isogram. Ignore letter case.

# describe "Solution" do
#   it "Fixed tests" do
#     Test.assert_equals(is_isogram("Dermatoglyphics"), true )
#     Test.assert_equals(is_isogram("isogram"), true )
#     Test.assert_equals(is_isogram("aba"), false, "same chars may not be adjacent" )
#     Test.assert_equals(is_isogram("moOse"), false, "same chars may not be same case" )
#     Test.assert_equals(is_isogram("isIsogram"), false )
#     Test.assert_equals(is_isogram(""), true, "an empty string is a valid isogram" )
#   end
# end

my_string = 'Thre'

def isogram(string)
  cast_and_downcase(string)
  return true if isogram? || isogram_equation == false
  return false if isogram_equation == true
end

def cast_and_downcase(given_string)
  @my_string = given_string
  @downcase_string = @my_string.downcase
end

def isogram?
  @my_string.empty?
end

def isogram_equation
  @downcase_string.split('').map { |i| @downcase_string.count(i) }.any?(2)
end

puts isogram(my_string)


