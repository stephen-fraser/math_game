require './player'

puts "Enter Player 1's name: "
p1 = gets.chomp
puts "Enter Player 2's name: "
p2 = gets.chomp

p1 = Player.new('p1')
p2 = Player.new('p2')

while p1.lives 