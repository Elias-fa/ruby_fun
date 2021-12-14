# string = "This is a string"

# puts string.size
# puts string.empty?
# puts string.include?("This")
# puts string.gsub("string", "sentence")
# puts string.split


################################

# the_hash = {a: 1, b: 2, c: 3, d: 4, e: 5}
# puts the_hash.key?(:f) #returns boolean value if :a was used would be true
# puts the_hash.fetch(:a) # 1

# the_hash[:g] = 7

# puts the_hash #list all hash values

# second_hash = {f: 6, h: 8}

# the_hash.merge!(second_hash) #will merge second_hash hash into first hash

# puts the_hash

# list_of_words = {
#   list1: [
#     "this",
#     "is",
#     "a",
#     "word"
#   ],
#   list2: [
#     "here",
#     "are",
#     "some",
#     "more"
#   ]
# }

# puts list_of_words[:list1][2] #access a hash with multiple values for one/each key
# puts list_of_words[:list2][1] #determine which symbol you need to reference, then which piece inside it

###############################

# my_array = [1, "abc", [], []] #start with an array containing integer, string, empty arrays

# puts my_array[0] 
# puts my_array[1]


# my_array[2] << ('1') #append this value into the empty array inside my_array
# puts my_array
# puts my_array[2][0]

# second_array = ["string", "another", "third"]

# my_array[3].concat(second_array) #this will join the second_array to the array inside my_array
# puts my_array[3]
# puts second_array #maybe for more efficient use, always make an array to concat inside another so that you can change that info automatically from the original array it came from


# ex_array = [1, "string", [], ["item1", "item2"]]

# # puts ex_array.size
# # puts ex_array.empty?
# # puts ex_array.pop
# # puts ex_array.join(' ')
# puts ex_array.flatten

##############################

### ENUMERABLE ###

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# print array.map { |num| num.to_s }
# print array.map(&:to_s)
# print array.map(&:odd?)
# print array.select { |num| num <= 5}
# print array.map(&:odd?).select { |num| num == true }
# print array.map(&:odd?).select { |num| num == true }.count

# array_2 = [1, 2, 3, 4, 5]
# total = 0 
# array_2.each { |n| total += n }
# puts total


numbers = [1, 2, 3, 4, 5]
puts numbers.inject { |total, n| total + n } 
        #total becomes the 1 in the array and n iterates through the other numbers in the array adding them to total
        #inject takes a value to start with (the 0 in your example), and a block, and it runs that block once for each element of the list.

