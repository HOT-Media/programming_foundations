ERROR_MESSAGE = 'There is no possible number that fulfills those requirements.'

def featured(num)
  if num > 9_876_543_210
    ERROR_MESSAGE
  elsif num % 7 == 0
    num
  else
    loop do
      num -= 1
      break if num % 7 == 0
    end
  end

  loop do
    num += 7
    break if num.odd? && num.to_s.chars.uniq == num.to_s.chars
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
