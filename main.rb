require_relative "lib/test"
require_relative "lib/print_result"

current_path = File.dirname(__FILE__)
file_path_questions = current_path + "/data/questions.txt"
file_path_answers = current_path + "/data/answers.txt"

name = ARGV[0]

name = "Аноним" if name == nil

test = Test.new(file_path_questions)
result = PrintResult.new(file_path_answers)

puts "Здравствуйте, #{name}! Вашему вниманию предлагается несколько"
puts "простых вопросов. Отвечайте: «да», «нет» или «иногда»."

# Отвечаем на вопросы теста
test.ask_next_question

# Сохранение и вывод результатов
result.print_result(test)