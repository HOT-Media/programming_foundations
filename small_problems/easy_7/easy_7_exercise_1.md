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


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']












