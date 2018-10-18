Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:
```ruby

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


array method
collector = []
collector << arr1[0]
collector << arr2[0]

arr1.length.times do |index|

  index += 1

arr1 = [1, 2, 3]
arr2 = ['a', 'b', 'c']
collector = []
3.times do |element|
  collector << arr1[element]
  collector << arr2[element]
end

collector


*************************************************JMX



def interleave(arr1, arr2)
  collector = []
  arr1.count.times do |element|
    collector << arr1[element]
    collector << arr2[element]
  end
  collector
end


interleave() == [1, 'a', 2, 'b', 3, 'c']




*************************************************LS


def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

=> [1, "a", 2, "b", 3, "c"]


```

each_with_index is iterating through array1
The "element" and "index" parameters of each_with_index represent:
  the element in the index location of array1
The empty array result is the collection array
on each iteration:
  the "element" at the "index" of array1 is appened to result with <<
and
  the element in the "index" of array2[index] is appended to result with <<

So result contains stacked values from array1 then array2



