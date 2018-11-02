Given the following data structure, 

return a new array containing the same sub-arrays as the original 

but ordered logically 

according to the numeric value of 

the odd integers they contain.

```ruby
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


arr.map do |sub_array| 
  sub_array.sort_by {|num| num.odd?}

[1, 6, 7].sort <=> [1, 4, 9].sort
=> 1
[1, 6, 7].sort <=> [1, 4, 9].sort  <=> [1, 8, 3].sort
SyntaxError: unexpected <=>
...7].sort <=> [1, 4, 9].sort  <=> [1, 8, 3].sort
...                            ^~~
[1, 4, 9].sort  <=> [1, 8, 3].sort
=> 1




