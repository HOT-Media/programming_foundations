def show_multiplicative_average(arr)
  result = 1
  arr.each { |idx| result *= idx }
  puts "The result is #{format('%.3f', result /= arr.count.to_f)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
