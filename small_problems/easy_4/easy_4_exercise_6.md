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



running_total(arr)

[2, 5, 13]

0   1   2
2   7  20



on the first iteration push the first index to the first index of the new array
second iteration add the first index of the new array with the current index and push that to
the new array