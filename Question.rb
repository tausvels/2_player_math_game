class Question
  attr_reader :correct_ans

  def initialize(max_num_of_question)
    @num1 = rand((max_num_of_question/5).to_i..(max_num_of_question))
    @num2 = rand((max_num_of_question/5).to_i..(max_num_of_question))
    @correct_ans = @num1 + @num2
  end

  def disp_question
    puts "What is #{@num1} + #{@num2}?" 
  end

  def correct?(guessed_ans)
    guessed_ans == @correct_ans
  end
end