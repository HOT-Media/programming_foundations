puts "Please enter an integer greater than 0:"
entered_integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
calculation_type = gets.chomp

if calculation_type == "s"
  sum_calculation = (1..entered_integer).reduce(:+)
  puts "The sum of the integers between 1 and #{entered_integer}\
   is #{sum_calculation}."
else
  product_calculation = (1..entered_integer).reduce(:*)
  puts "The product of the integers between 1 and #{entered_integer}\
   is #{product_calculation}."
end
