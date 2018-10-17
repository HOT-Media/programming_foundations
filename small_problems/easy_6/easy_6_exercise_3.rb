def find_fibonacci_index_by_length(index_length)
  fib_arr = [0, 1]
  fibonaccci_number = 2

  loop do
    fib_arr[0], fib_arr[1] = fib_arr[1], fib_arr.sum
    fibonaccci_number += 1
    break if fib_arr.sum.to_s.length == index_length
  end

  fib_arr.sum
  fibonaccci_number
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847
