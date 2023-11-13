require './question'

class Turn
  attr_accessor :question, :player

  def initialize(player)
    @question = Question.new
    @player = player
  end

  def current_turn
    puts "<----- NEW TURN ----->"
    q_and_a = self.question.new_question
    puts "#{self.player.name}: #{q_and_a[0]}"
    player_answer = gets.chomp

    if player_answer.to_i == q_and_a[1]

      puts "Boom! #{self.player.name} you are correct."
    else 
      puts "Wrong. You weren't even close #{self.player.name}."
      self.player.remove_life
    end
  end
end
