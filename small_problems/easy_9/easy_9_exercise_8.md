Create a method that takes two integers as arguments. 

The first argument is a count, 

the second is the first number of a sequence that your method will create. 

The method should return an Array that contains the same number of elements as the count
 argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Examples:
```ruby
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

each with index, ( starting number, ending number)




sequence(5, 1) == [1, 2, 3, 4, 5]  every whole number is a multiple of 1
         5 elements
            starting with 1
                  1 * index => 1
                     2 * index => 2


sequence(4, -7) == [-7, -14, -21, -28]
         4 elements
            starting with -7
                    -7 * index => -7
                         -7 * index => -14
                              -7 * index => -21



Array.new(5, str)
# => [1234, 1234, 1234, 1234, 1234]


Array.new(count, first_number_of_sequence)







def sequence(count, first_number_of_sequence)

end

sequence(5, 1)

count = 5

first_number_of_sequence = 1




count = 5
=> 5

first_number_of_sequence = 1

=> 1
Array.new(count, 1)
=> [nil, nil, nil, nil, nil]

return an array with 5 elements

start the array with 1

multiply the index with the starting number

sequence_array = []
count.times do |idx|
  sequence_array <<  (idx + 1) * first_number_of_sequence
end


sequence_array


def sequence(count, first_number_of_sequence)

  sequence_array = []

  count.times do |idx|
    sequence_array <<  (idx + 1) * first_number_of_sequence
  end
  sequence_array
end






def sequence(count, first_number_of_sequence)
  sequence_array = []
  count.times do |idx|
    sequence_array <<  (idx + 1) * first_number_of_sequence
  end
  sequence_array
end







*************************************************JMX

def sequence(count, fn)
  collector_arr = []
  count.times { |idx| collector_arr <<  (idx + 1) * fn }
  collector_arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []




*************************************************LS 

def sequence(count, first)
  (1..count).map { |idx| idx * first }
end


# What is the return value, or does the range (1..elements) raise an exception
# because it's not an Array or Hash
elements = 5

first_number = 1

(1..elements).map { |idx| idx * first_number }
=> [1, 2, 3, 4, 5]























