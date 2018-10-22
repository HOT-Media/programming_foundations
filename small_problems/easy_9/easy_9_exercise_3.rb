def negative(num)
  num = -num if num.abs == num
  num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
