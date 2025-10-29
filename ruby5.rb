# 1
puts "Введіть рядок (англ. букви та цифри, розділені пробілами):"
str = gets.chomp

# 2
puts "Довжина рядка: #{str.size}"

#3
up_count = str.scan(/[A-Z]/).count   #великі
low_count = str.scan(/[a-z]/).count  #малі
dig_count = str.scan(/\d/).count   # Цифри

puts "Статистика символів:"
puts "  Заголовних: #{up_count}"
puts "  Прописних: #{low_count}"
puts "  Цифр: #{dig_count}"

# 4
words = str.split(/\s+/)
puts "Масив слів:"
p words

# 5
sorted_by_len = words.sort_by(&:length)
puts "Сортування за зростанням довжини:"
p sorted_by_len

# 6
capitalized = sorted_by_len.map(&:capitalize)
puts "Слова з великої літери:"
p capitalized

# 7
suspicious = words.select { |w| w =~ /[a-z]/i && w =~ /\d/ }

puts "Підозрілі слова (букви+цифри):"
if suspicious.empty?
  puts "  (немає)"
else
  p suspicious
end

# 8
new_text = words.sort_by(&:length).reverse.join(" ")

puts "Новий текст (сортування за спаданням довжини):"
puts new_text