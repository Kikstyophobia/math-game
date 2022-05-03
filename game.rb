require_relative('questions.rb')
require_relative('players.rb')

class Game
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")

    @@current_player = @player1
    @end_game = false

  end

  def start_game
    while !@end_game 
    question = Question.new 
    puts "#{@@current_player.check_name}: #{question.question}"
    answer = gets.chomp.to_i

      if question.checker?(answer) 
        puts "Correct!"
      else 
        puts "Incorrect!"
        @@current_player.lose_life

        if !@@current_player.check_lives?
          @end_game = true
        end
      end
      @@current_player = @@current_player == @player1 ? @player2 : @player1
    end
    puts "Game Over! #{@@current_player.check_name} wins!"
  end

end