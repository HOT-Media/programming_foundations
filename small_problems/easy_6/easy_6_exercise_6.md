Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. 

There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Example
```ruby
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]




*************************************************JMX



def merge (arr1, arr2)
arr1 << arr2
arr1.flatten.uniq
end


*************************************************LS

def merge(array_1, array_2)
  array_1 | array_2
end





[1, 3, 5] | [3, 6, 9]
=> [1, 3, 5, 6, 9]




```
Set Union — Returns a new array by joining ary with other_ary, excluding any duplicates and preserving the order from the given arrays.