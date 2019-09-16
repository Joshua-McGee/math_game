
class Player
  #updates and reads the player attributs
  # include ClassLevelInheritableAttributes
  # inheritable_attributes :name, :lives
  attr_accessor :name, :lives 
  
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

end

class Question

  attr_accessor :num1, :num2, :sum

  def initialize
  @num1 = (rand(20))
  @num2 = (rand(20))
  @sum = num1 + num2
  end
  #creates a question passed to class game

end

class Start
  #create our classes
  player1 = Player.new('Player1', 3)
  player2 = Player.new('Player2', 3)
  question = Question.new

  #containes the logic for the game and player input
  puts "#{player1.name}: What does #{question.num1} plus #{question.num2} equal?"
  
  
end



# puts player1.name
# puts player1.lives

Start

