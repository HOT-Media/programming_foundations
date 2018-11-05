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


iterate through arr

sort each sub array
  arr.map do |element|
    element.sort_by |a,b| b <=> a
   ['br', 'az', 'aa'].sort_by{|str| str.split.sort.join}







arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |element|
   if element.any?{|elm| elm.class == Integer}
    element.sort
  else
    ['b', 'c', 'a'].sort_by{|str| str.split.sort.join}
  end
end






*************************************************JMX

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |element|
   if element.any?{|elm| elm.class == Integer}
    element.sort
  else
    element.sort_by{|str| str.split.sort.join}
  end
end

=> [["a", "b", "c"], [1, 2, 3], ["black", "blue", "green"]]








