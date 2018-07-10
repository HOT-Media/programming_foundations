puts "Enter a number"
first = gets.chomp.to_i

puts "Enter the nth power"
power = gets.chomp.to_i

def numbers_squared(fn, pwr)
  fn**pwr
end

puts numbers_squared(first, power)
