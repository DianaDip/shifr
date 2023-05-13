require 'digest'
puts 'Введите слово или фразу для шифрования:'
string = STDIN.gets.chomp

puts 'Каким способом зашифровать:
1. MD5
2. SHA1'
a = STDIN.gets.to_i

puts 'Вот что получилось:'
case a
when 1
  puts Digest::MD5.hexdigest(string)
when 2
  puts Digest::SHA1.hexdigest(string)
end