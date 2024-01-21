class Question

  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def prompt
    @prompt_string = "What is the sum of #{num1} and #{num2}"
  end
end

#TESTING
# question1 = Question.new
# puts question1.num1
# puts question1.num2
# puts question1.prompt
# puts question1.answer

