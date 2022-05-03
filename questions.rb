class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @total = @num1 + @num2
  end

  def question 
    "What is #{@num1} + #{@num2}?"
  end

  def checker?(guess)
    guess == @total
  end

end