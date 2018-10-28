def fibonacci_last(fib_num)
  return 1 if fib_num < 2
  fib_integer = [0,1]
  count = 1

  loop do
    count += 1
    break if count == fib_num
    (fib_integer.push(fib_integer.sum)).shift
  end
  fib_integer.sum.digits.first
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
