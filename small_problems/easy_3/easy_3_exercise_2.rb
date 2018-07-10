puts "Enter the 1st number:"
first = gets.chomp.to_i

puts "Enter the 2nd number:"
second = gets.chomp.to_i

def arithmetic_method(fn, sn)
  p fn + sn
  p fn - sn
  p fn * sn
  p fn / sn
  p fn % sn
  p fn**sn
end

arithmetic_method(first, second)
