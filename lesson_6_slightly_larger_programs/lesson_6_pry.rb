require 'pry'

puts "one or two"
answer = gets.chomp

binding.pry

if answer == 1
  puts 'One'
elsif answer == 2
  puts 'Two'
else
  puts 'invalid'
end

