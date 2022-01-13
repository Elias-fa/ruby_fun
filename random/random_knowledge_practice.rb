require 'pry'

# create a very simple game
# there will be 2 players, players take turns

puts '*' * 29
puts "WELCOME TO GAME OF STONES"
puts '*' * 29

stones = 10
players = []


2.times do |i|
  puts "Player #{i + 1}, please enter your name:"
  players << gets.strip
end

# puts players.inspect #this will show names in players array

players.cycle do |player|
  puts "The correct number of stones is: #{stones}"
  puts "Player #{player}, it is your turn now!"

  number = 0
  loop do
    number = gets.to_i
    if number.between?(1, 3) && number <= stones
      break
    else
      puts 'Please enter the correct number!'
    end
  end

  stones -= number

  if stones.zero?
    puts "Player #{player} lost!"
    break
  end
end
