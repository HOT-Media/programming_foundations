def fibonacci(fib_num)
  return 1 if fib_num < 2
  fib_integer = [0, 1]
  count = 1

  loop do
    count += 1
    break if count == fib_num
    fib_integer.push(fib_integer.sum).shift
  end
  fib_integer.sum
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(1) == 1
p fibonacci(2) == 1
