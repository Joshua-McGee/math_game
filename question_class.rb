# used to create and sum random numbers
class Question
  # sends the numbers data and sum of the numbers each time its created
  attr_accessor :num1, :num2, :sum

  def initialize
  @num1 = (rand(20))
  @num2 = (rand(20))
  @sum = (@num1 + @num2)
  end
  #creates a question passed to class game
  
end