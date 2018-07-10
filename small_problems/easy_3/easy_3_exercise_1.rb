puts "Enter the 1st number:"
first = gets.chomp.to_i

puts "Enter the 2nd number:"
second = gets.chomp.to_i

puts "Enter the 3rd number:"
third = gets.chomp.to_i

puts "Enter the 4th number:"
fourth = gets.chomp.to_i

puts "Enter the 5th number:"
fifth = gets.chomp.to_i

puts "Enter the 6th number:"
sixth = gets.chomp.to_i

array_to_search = []

array_to_search.push(first, second, third, fourth, fifth)

if array_to_search.include?(sixth)
  puts "The number #{sixth} appears in #{array_to_search}."
else
  puts "The number #{sixth} does not appear in #{array_to_search}."
end
