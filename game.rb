
class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
end

class Game
end

class Question
end

player1 = Player.new('Player1')
player2 = Player.new('Player2')

puts player1.name
puts player1.lives

