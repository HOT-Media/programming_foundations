def stringy(size,option = 1)
  numbers = [] # initialize an empty array to add 0's and 1's

  if option == 1
    size.times do |index|
      # if the value of index.even? on the first iteration is true, 1 if false 0
      number = index.even? ? 1 : 0
      numbers << number
    end
  else
    size.times do |index|
      # if the value of index.even? on the first iteration is true, 0 if false 1
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
