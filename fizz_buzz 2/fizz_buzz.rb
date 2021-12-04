require 'pry'

# This is a ruby comment, it doesn't get evaluated the hashtag indicates it's a comment

#puts "*************\n This is puts statement, which is a way to print output from the program.\n**************"
# to see the puts above, uncomment it and run `ruby fizz_buzz.rb` in your terminal

def fizzbuzz(number_range)
  number_range.downto(1) do | i | 
  case 
    when i % 15 == 0      #i % 3 == 0 && i % 5 == 0      
      puts "fizzbuzz"
    when i % 3 == 0
        puts "fizz"
    when i % 5 == 0
       puts "buzz"
    else 
      puts i
    end
  end
end



# Don't touch the line below, it's needed to for test execution.
fizzbuzz(ARGV[0].to_i)