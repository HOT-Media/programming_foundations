def stringy(size)
  numbers = [] # initialize an empty array to add 0's and 1's

  size.times do |index|
    # if the value of index.even? on the first iteration is true, 0 if false 1
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
