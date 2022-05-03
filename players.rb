
class Player
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def check_name
    @name
  end

  def lose_life
    @lives -= 1
  end

  def check_lives?
    @lives > 0
  end

end