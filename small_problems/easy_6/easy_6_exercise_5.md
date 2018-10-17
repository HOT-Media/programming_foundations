Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.

Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

Examples:

```ruby
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]                 # => true



def reverse(arr)
  new_arr = []
  arr.count.times do |idx|
    new_arr.unshift(arr[idx])
end




*************************************************JMX


def reverse(arr)
  new_arr = []
  arr.count.times {|idx| new_arr.unshift(arr[idx])}
  new_arr
end




**************LS**********************************

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end





An even shorter solution is possible by using either inject or each_with_object. Just for fun, read about these methods in the Enumerable module documentation, and try using one in your reverse method.









a = [ "a", "b", "c" ]

new = []

a.reverse_each {|x| new << x}
=> ["a", "b", "c"]

new
=> ["c", "b", "a"]



















