Given this data structure,

return a new array of the same structure

but with the sub arrays being ordered (alphabetically or numerically as appropriate) 

in descending order.

```ruby
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sort the sub arrays only

if the array elements have one character sort

  if the subarray elements have more than one character, sort the elements then sort the array
    element.c





.sort or .sort_by 

['blue', 'black', 'green'].sort_by do |word|
  word.chars.sort
end  
=> ["black", "blue", "green"]



