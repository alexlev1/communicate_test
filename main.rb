require_relative "lib/test"
require_relative "lib/print_result"

name = ARGV[0]

name = "Аноним" if name == nil

test = Test.new
result = ResultPrinter.new

puts "Здравствуйте, #{name}! Вашему вниманию предлагается несколько"
puts "простых вопросов. Отвечайте: «да», «нет» или «иногда»."

# Отвечаем на вопросы теста
test.ask_next_question

# Сохранение и вывод результатов
result.print_result(test)