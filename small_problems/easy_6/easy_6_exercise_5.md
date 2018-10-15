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


new_list = []

iterate
new_list << list.pop
