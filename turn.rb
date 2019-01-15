class Turn
  def initialize(player)
    puts "----- NEW TURN ------"
    current_question = Question.new
    puts "#{player.name}: #{current_question.math_question}"
    @answer = gets.chomp.to_i

    if current_question.check_answer?(@answer)
      puts "#{player.name}: Correct! YOU NOT STOOPID!!"
    else
      player.taken_lives
      puts "#{player.name}: Wrong Ans! YOU STOOPID!!"
    end
  end
end