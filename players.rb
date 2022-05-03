# players
# lives
# turns
# score
# gets.chomp
# questions

class Player
  
  def initialize(name)
    @name = name
    @@lives = 3
  end

  def check_name
    puts @name
  end

  def lose_life
    @@lives -= 1
  end

  def check_lives
    puts @@lives
  end

end

player1 = Player.new("Player 1")
player1.check_name
player1.check_lives
player1.lose_life
player1.check_lives

puts ""

player2 = Player.new("Player 2")
player2.check_name
player2.check_lives

