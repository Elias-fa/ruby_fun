#####///////#####

# iterate through the array and count all values > 5 (answer should be a count of 4)

# array =  [17, 7, 3, 6, 10, 1]

# def greater_than_five(array)
#   print array.select {|number| number > 5}.count
# end

# greater_than_five(array)

#####///////#####

# algorithm to find prime numbers, divided by self and 1. check if divisible by self
# and numbers down to 1.

# require 'prime'

# def prime1?(num)
#   return if num <= 1
#   (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
# end

# def prime2?(num)
#   return false if num <= 1
#   Math.sqrt(num).to_i.downto(2) {|i| return false if num % i == 0}
#   true
# end

# def prime3?(num)
#   Prime.prime?(num)
# end

# def prime4?(num)
#   ('1' * num) !~ /^1?$|^(11+?)\1+$/
# end

# puts prime1?(3)
# puts prime2?(13)
# puts prime3?(100)
# puts prime4?(75)

#####///////#####
# require 'prime'
# array = [2, 3, 4, 6, 8]

# def prime_count(array)
#   array.select {|number| Prime.prime(number)}.count
# end

# prime_count(array)

#####///////######

#create a method that will take in two arrays of names and find the unique names 
#between the both of them.

def unique_names(names1, names2)
  join_arrays(names1, names2)
end

def join_arrays(array1, array2)
  array = []
  array.concat(array1, array2).uniq
end

names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]
puts(unique_names(names1, names2))


