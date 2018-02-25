require_relative "test"
require_relative "print_result"

name = ARGV[0]

if name == nil
  name = "Аноним"
end

test = Test.new
result = ResultPrinter.new

puts "Здравствуйте, #{name}! Вашему вниманию предлагается несколько"
puts "простых вопросов. Отвечайте: «да», «нет» или «иногда»."

# Отвечаем на вопросы теста
test.ask_next_question

# Сохранение и вывод результатов
result.print_result(test)