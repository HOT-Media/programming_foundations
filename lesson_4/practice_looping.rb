count = 0

loop do
  count += 1
  puts "#{count} is odd" if count.odd?
  puts "#{count} is even" if count.even?
  break if count > 4
end






loop do
  number = rand(100)
  puts number
  break if number.between?(0,10)
end






loop do

process_the_loop = [true, false].sample

  if process_the_loop 
    puts "The loop was processed!"
    break
  else
    puts "The loop was not processed!"
  end

end







loop do
   puts 'What does 2 + 2 equal?'
   answer = gets.chomp.to_i
   if answer == 4
     puts "Thats correct!"
     break
   else
     puts "Wrong answer. Try again!"
   end
 end







numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.length == 5
end

puts numbers






names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do

  puts names.pop 

break if names.empty?

end




5.times do |index|
  puts index
  break if index > 1
end





number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end





number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  puts "this is number a #{number_a}"
  puts "this is number b #{number_b}"
  
  if number_a < 5 && number_b < 5 
    next
  end

  puts "5 was reached!"
  break
end





def greeting 
  number_of_greetings = 2
  loop_counter = 0
  while loop_counter < number_of_greetings
    puts 'Hello!'
    loop_counter += 1
  end
end
