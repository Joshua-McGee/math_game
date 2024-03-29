require_relative "player_class.rb"
require_relative "question_class.rb"
# Main logic for the game
class Start
  
  def initialize
    #create our classes
    @player1 = Player.new('Player1', 3)
    @player2 = Player.new('Player2', 3)
    @player_turn = 1    
  end

  #containes the logic for the game and player input
  def ask_q
    #keep asking questions as long as players have lives
    while @player1.lives || @player2.live != 0

      if @player_turn == 1
        #creats a new Question for player1
        @question = Question.new
        puts "--- NEW TURN ---"

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
          puts "P1: #{@player1.lives}/3 vs P2 #{@player2.lives}/3"

      elsif @player_turn == 2
        puts "--- NEW TURN ---"
        #creates new question for player 2
        @question = Question.new
        puts "#{@player2.name}: What does #{@question.num1} plus #{@question.num2} equal?"
        print "> "
        choice = gets.chomp

        # if correct dont deduct lives and switch to player 1 else -1 life
        if choice == "#{@question.sum}"
          puts "Correct!, time to switch"
          @player_turn -= 1
        else 
          @player2.lives -= 1
          wrong(@player2.lives)
          @player_turn -= 1
        end
        puts "P1: #{@player1.lives}/3 vs P2 #{@player2.lives}/3"
      end
    end
  end

  # this checks if the lives are 0 and once they are ends the game
  def wrong(lives)

    if lives == 0
      puts "Player#{@player_turn} has died (and sucks at math)"
      puts "The score was P1:#{@player1.lives}/3 to P2:#{@player2.lives}/3"
      puts "----- GAME OVER -----"
      exit(0)
    end
    puts "You have #{lives} lives left, time to switch'"
  end

end