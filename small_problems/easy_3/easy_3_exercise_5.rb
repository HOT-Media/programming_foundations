puts "Enter a number"
first = gets.chomp.to_i

def numbers_squared(fn)
  fn*fn
end

puts numbers_squared(first)
