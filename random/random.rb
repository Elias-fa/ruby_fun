arr = ['string', "string", ["nested array with string"], :my_symbol]
#puts arr[2]

my_regexp = /[abc]/
my_string = '12atest'

#puts my_string =~ my_regexp
#will give the position of the first appearance of the letter a in the regexp

puts 'Enter a number:'
user_input = gets.chomp.to_i

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


family = (
  wife: 23
  child: 1
  husband: 25
)

puts 'Enter the member of the family:'
value = gets.strip.to_sym  #strip takes out all trailing white spaces
