class Player 
  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def remove_life
    @lives -= 1
  end

end

# Tester
# p1 = Player.new('p1')
# p2 = Player.new('p2')

# puts p1.name
# puts p1.remove_life