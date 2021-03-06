class Test
  attr_reader :sum_answers

  def initialize(file_path)
    @questions = File.readlines(file_path)
    @count_questions = @questions.size
    @sum_answers = 0
  end

  def enter_your_answers!
    user_input = nil

    while !["да", "иногда", "нет"].include?(user_input)
      puts "Введите \"да\", \"иногда\" или \"нет\", ответив на вопрос"
      user_input = STDIN.gets.chomp.downcase
    end

    case user_input
      when "да" then @sum_answers += 2
      when "иногда" then @sum_answers += 1
    end
  end

  def ask_next_question
    @questions.each do |item|
      puts "Осталось вопросов: #{@count_questions}"
      puts item
      enter_your_answers!
      @count_questions -= 1
    end
  end
end