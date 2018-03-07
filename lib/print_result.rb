class PrintResult
  def initialize
    current_path = File.dirname(__FILE__)
    file_path = current_path + "/../data/answers.txt"

    begin
      @results = File.readlines(file_path)
    rescue SystemCallError => error
      puts "Ошибка! Нет файла с ответами"
    end
  end

  def print_result(test)
    # Результаты теста
    puts "\nВаш результат теста (всего баллов - #{test.sum_answers})"

    result_test = if test.sum_answers.between?(30, 32)
        @results[0]
      elsif test.sum_answers.between?(25, 29)
        @results[1]
      elsif test.sum_answers.between?(19, 24)
        @results[2]
      elsif test.sum_answers.between?(14, 18)
        @results[3]
      elsif test.sum_answers.between?(9, 13)
        @results[4]
      elsif test.sum_answers.between?(4, 8)
        @results[5]
      else
        @results[6]
      end

    puts result_test
  end
end