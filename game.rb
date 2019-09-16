
class Player
  #updates and reads the player attributs
  attr_accessor :name, :lives 
  
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

end

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



class Start
  
 
  def initialize
    #create our classes
    @player1 = Player.new('Player1', 3)
    @player2 = Player.new('Player2', 3)
    @player_turn = 1
    #@question = Question.new
    
  end

  def ask_q
    #containes the logic for the game and player input
    while @player1.lives || @player2.live != 0
      @question = Question.new
      if @player_turn == 1
          puts "#{@player1.name}: What does #{@question.num1} plus #{@question.num2} equal?"
          print "> "
          choice = gets.chomp

          if choice == "#{@question.sum}"
            puts "Correct!, time to switch"
            @player_turn += 1
          else 
            @player1.lives -= 1
            wrong(@player1.lives)
            @player_turn += 1
          end

      elsif @player_turn == 2
        @question = Question.new
        puts "#{@player2.name}: What does #{@question.num1} plus #{@question.num2} equal?"
        print "> "
        choice = gets.chomp

        if choice == "#{@question.sum}"
          puts "Correct!, time to switch"
          @player_turn -= 1
        else 
          @player2.lives -= 1
          wrong(@player2.lives)
          @player_turn -= 1
        end
      end
    end
  end

  # this checks if the lives are 0 and once they are ends the game
  def wrong(lives)

    if lives == 0
      puts "you died (and suck at math)"
      exit(0)
    end
    puts "You have #{lives} lives left, time to switch'"
  end

end

# start the game.
start = Start.new
start.ask_q

