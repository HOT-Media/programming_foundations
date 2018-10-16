Write a method that takes an Array as an argument, and reverses its elements in place;

that is, mutate the Array passed into this method. 

The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:
```ruby
list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []




list = [1,2,3,4]

accumulator = []
list.map! do |idx|
  accumulator.



take index 0 and put it in index 3 or 
1 2 3 4

1
put the nex one in front of that one
2, 1
3,2,1

a = [ "b", "c", "d" ]
a.unshift("a")   #=> ["a", "b", "c", "d"]


accumulator = []

list.map do |idx| 
  accumulator.unshift(idx) # => [4,3,2,1]
  
end




list = [1,2,3,4]
list.count # =>4 
accumulator = []


index_counter = list.count
loop do
index_counter -= 1
accumulator << list.pop
break if index_counter == 0
end

list.concat(accumulator)


**********************JMX************************



def reverse!(arr)
  return if arr.empty
  arr.count # =>4 
  accumulator = []

  index_counter = arr.count
  loop do
    index_counter -= 1
    accumulator << arr.pop
  break if index_counter == 0
  end

  arr.concat(accumulator)
end




********************LS***************************
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end



















