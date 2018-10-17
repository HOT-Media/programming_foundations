Write a method named include? that takes an Array and a search value as arguments. 

This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

```ruby

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false





include_this_number = 3

[1,2,3,4,5], 3

iterate throug the array and compare the current element to the include_this_number




*************************************************JMX

def include?(arr,include_this_number)
  included_number = []
  arr.map do |idx|
     included_number << if idx == include_this_number
  end
 
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false


def include?(arr,include_this_number)
  included_number = []
    arr.each do |idx|
       included_number << if idx == include_this_number
    end
  end
  included_number[0] == include_this_number
end



arr.each do |idx|
  included_number << if idx == include_this_number
end


arr.each do |idx|
 included_number[0] = idx if idx == 3

end


put the first element into an array
compare that element to 



*************************************************JMX
def include?(arr,include_this)
  return false if arr.empty?
  included_in_array = []
  arr.each do |idx|
    if idx == include_this
      included_in_array << idx
    end
  end
  included_in_array[0] == include_this
end






p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false


*************************************************LS

def include?(array, value)
  !!array.find_index(value)
end
A slightly harder way

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

arr = [1,2,3,4]

array.find_index(2)
=> 2

!!array.find_index(2)
=> true




def ret(x, y)
x.each do |idx|
  return true if idx == y
end


def include?(array, value)
  array.each { |element| return true if value == element }
  false
end


arr = [1,2,3,4]

include?(arr, 2)
=> true














