class Question

  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @answer = @first_num + @second_num
  end

  def math_question
    " What does #{@first_num} plus #{@second_num} equal?"
  end
  
  def check_answer?(answer)
    @answer == answer
  end
end