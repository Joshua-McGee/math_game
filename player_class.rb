#creates a player
class Player
  #updates and reads the player attributs
  attr_accessor :name, :lives 
  
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

end