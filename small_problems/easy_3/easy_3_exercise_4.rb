puts "Enter the first number"
first = gets.chomp.to_i

puts "Enter the second number"
second = gets.chomp.to_i

def product(fn,sn)
  fn * sn
end

puts product(first, second)
