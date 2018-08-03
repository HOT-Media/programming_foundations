

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end




def factors(number)
  return if number <= 0
  dividend = number
  divisors = []
    loop do
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    break if dividend == 0
  end
  divisors
end



