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

a.each_slice(2).to_a

if a.count / 2 == a.count % 2 => false
  a.each_slice(a.count / 2 + 1)
a = [1, 5, 2, 4, 3]

a.each_slice(a.count / 2 + 1)
=> #<Enumerator: ...>
a.each_slice(a.count / 2 + 1).to_a
=> [[1, 5, 2], [4, 3]]





a
=> [1, 5, 2, 4, 3, 6]
a.count / 2
=> 3
a.each_slice(3).to_a
=> [[1, 5, 2], [4, 3, 6]]


def halvsies(arr)
  if arr.empty? 
    return Array.new(2, [])
  elsif arr.count == 1
    arr = [(arr), []]
  end

if arr.count % 2 == 0 # even number of elements
  arr.each_slice(arr.count / 2).to_a
else arr.each_slice(arr.count / 2 + 1).to_a # odd number of elements
end
end







*************************************************JMX

def halvsies(arr)

  if arr.empty?
    return Array.new(2, [])
  elsif arr.count == 1
    return [(arr), []]
  end

  if arr.count % 2 == 0
    arr.each_slice(arr.count / 2).to_a
  else arr.each_slice(arr.count / 2 + 1).to_a
  end
end

*************************************************LS



def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end





array = [1,2,3,4,5]

  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end

Our task is to split this array into two pieces. A first and second half. We get the size of the first by dividing the original arrays size by two. If the original array is odd in size, then a call to ceil will account for that, making the first half larger than the second by 1. The second half is created based on the size of the first half. It is made of the first element in array that is not in the first half and any remaining elements left in the original array. To create both halves, the Array.slice method is used. Finally, our halvsies array is created by specifying our two halves as the sole elements of a new array.


puts 8/3.ceil == 2   #=> true
puts 8/3.floor == 2  #=> true
puts 2.67.ceil == 2  #=> false
puts 2.67.floor == 2 #=> true


(8.to_f / 3).ceil == 2  #=> false
(8.to_f / 3).floor == 2 #=> true
2.67.ceil == 2          #=> false
2.67.floor == 2         #=> true







slice(index) → obj or nil
```
Element Reference — Returns the element at index

```ruby
slice(start, length) → new_ary or nil
arr
=> [1, 2, 3, 4]

arr.slice(0,2)
=> [1, 2]
```

Returns a subarray starting at the start index and continuing for length 
```ruby
slice(range) → new_ary or nil
```
returns a subarray specified by range of indices










Element Reference — Returns the element at index

Returns a subarray starting at the start index and continuing for length elements, or returns a subarray specified by range of indices.





Returns the smallest Integer greater than or equal to float

float to integer round up

1.2.ceil      #=> 2
=> 2
2.0.ceil      #=> 2
=> 2
(-1.2).ceil   #=> -1
=> -1
(-2.0).ceil   #=> -2
=> -2
2.1.ceil
2.9.ceil

```ruby
.ceil 
2.5.ceil
=> 3

3.0.ceil
=> 3
```
Rounds up the float to an integer












