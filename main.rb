require './player'
require './turn'
require './question'

puts "Enter Player 1's name: "
player_1_name = gets.chomp
puts "Enter Player 2's name: "
player_2_name = gets.chomp

p1 = Player.new(player_1_name)
p2 = Player.new(player_2_name)

current_player = true

while p1.lives > 0 && p2.lives > 0 do
  play_game = Turn.new(current_player ? p1 : p2)
  play_game.current_turn
  puts ""
  puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3 "
  puts ""
  current_player = !current_player
end

if p1.lives == 0
  puts "Congratulations #{p2.name}! You destroyed #{p1.name}."
else 
  puts "Congratulations #{p1.name}! You destroyed #{p2.name}."
end

