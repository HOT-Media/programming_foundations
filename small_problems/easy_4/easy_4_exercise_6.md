Write a method that takes an Array of numbers, 
and 

returns an Array with the same number of elements, 
and

each element has the running total from the original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

```ruby

running_total(arr)

[2, 5, 13]

0   1   2
2   7  20



on the first iteration push the first index to the first index of the new array
second iteration add the first index of the new array with the current index and push that to
the new array
```



Launch School solution:
This method just walks through the array calculating the running total while building the resulting array. #map makes this really easy.
```ruby

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
```

Further Exploration
Try solving this problem using Array#each_with_object or Enumerable#inject 
https://ruby-doc.org/core-2.5.0/Enumerable.html#method-i-each_with_object
