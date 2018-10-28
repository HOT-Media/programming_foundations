
def fib_calc(num)
  return num if num < 2
 fib_calc(num - 1) + fib_calc(num - 2)
end

