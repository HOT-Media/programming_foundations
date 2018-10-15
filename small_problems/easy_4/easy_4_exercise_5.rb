
puts "Enter a number greater than 1"
num = gets.chomp.to_i

def multiple_3_calculator(entered_number)
  number_of_multiples_of3 = entered_number / 3

  starting_multiple = 0

  multiple_3_collection = []

  loop do
    break if number_of_multiples_of3 <= 0
    number_of_multiples_of3 -= 1
    starting_multiple += 3
    multiple_3_collection << starting_multiple
  end

  multiple_3_collection
end

def multiple_5_calculator(entered_number)
  number_of_multiples_of5 = entered_number / 5

  starting_multiple5 = 0
  multiple_5_collection = []

  loop do
    break if number_of_multiples_of5 <= 0
    number_of_multiples_of5 -= 1
    starting_multiple5 += 5
    multiple_5_collection << starting_multiple5
  end

  multiple_5_collection
end

puts multiple_3_calculator(num).concat((multiple_5_calculator num)).uniq.sum
