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
  elsif arr.count == 1 # one digit [5]
    return [(arr), []]
  end

  if arr.count % 2 == 0 # even number of elements
    arr.each_slice(arr.count / 2).to_a
  else arr.each_slice(arr.count / 2 + 1).to_a # odd number of elements
  end
end











