Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. 

If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

Examples:
```ruby
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

array.count.odd?

[1, 2, 3, 4].count.odd?
=> false

list
=> [1, 2, 3, 4]
list.shift 2
=> [1, 2]
list
=> [3, 4]
