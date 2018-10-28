

Write a method that can rotate the last n digits of a number. For example:


```ruby

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.





(735291, 2) == 735219

turn the number to a string

access the n characters and put them in an array 

reverse the array

join the array to_i


  rotated = []
  rotated << arr[1..-1] << arr[0]
  rotated.flatten
            
rotate_rightmost_digits(735291, 3) == 735 912

735291 735 291
735912 735 912



how many digits do they want to rotate
convert the integer to a string and then split the string into an array
num.to_s.split(//)

create a new array containin the n digits of num

rotate the last n digits by one


rotate_arr = num.to_s.split(//)[-3..-1]
=> ["9", "1", "2"]
arr = [7, 3, 5, 2, 9, 1]
=> [7, 3, 5, 2, 9, 1]

[7, 3, 5, 2, 9, 1]

rotate_arr
["9", "1", "2"]


rotated = []
  rotated << arr[1..-1] << arr[0]
  rotated.flatten





rotate_arr
["9", "1", "2"]


rotated = []
  rotated << rotate_arr[1..-1] << rotate_arr[0]
                        1  2                 9
  rotated.flatten



take 2nd through the last elements and put them into an array
append the first element into the new array



rotate_these_digits_arr
["9", "1", "2"]


rotated_digits_array = []
append the digits after index 1 to the empty array rotated_digits_array then append the first elemtn of rotate these digis


rotate_these_digits_arr
["9", "1", "2"]

rotated_digits_array = []
rotated_digits_array << rotate_these_digits_arr[1..-1] << rotate_these_digits_arr[0]

(rotated_digits_array.flatten)

rotated = []
  rotated << rotate_arr[1..-1] << rotate_arr[0]
                        1  2                 9
  rotated.flatten








arr = [7, 3, 5, 2, 9, 1]



rotated << arr[1..-1] << arr[0]
  rotated.flatten



rotated = []
  rotated << arr[1..-1] << arr[0]
  rotated.flatten


arr = [7, 3, 5, 2, 9, 1]
=> [7, 3, 5, 2, 9, 1]
rotated = []
=> []
rotated << arr[1..-1] << arr[0]
append 1 - negative 1 to rotated then append 0 
=> [[3, 5, 2, 9, 1], 7]
rotated.flatten 
=> [3, 5, 2, 9, 1, 7]





remove the last n digits from the array
put those digits in a new array
put the digits after index 0 in a rotated array
append the index 0 digit to the rotated array
assign the rotated original array[0,1,2] = array[0,1,2] 

left_index = 0
right_index = -1

array[left_index], array[right_index] = array[right_index], array[left_index]



n = 3, 
last 3 digits

arr[(-n)..-1]


arr = [7, 3, 5, 2, 9, 1]
=> [7, 3, 5, 2, 9, 1]
rotate_these_digits = arr[-3..-1]
=> [2, 9, 1]
rotated_digits = []
=> []
rotated_digits << rotate_these_digits[1..-1] << rotate_these_digits[0]
=> [[9, 1], 2]
rotated_digits.flatten
=> [9, 1, 2]
arr[-3..-1] = rotated_digits[0..2]
=> [[9, 1], 2]
arr
=> [7, 3, 5, [9, 1], 2]
arr.flatten
=> [7, 3, 5, 9, 1, 2]



arr = [7, 3, 5, 2, 9, 1]

n = 3, 
# last 3 digits

# arr[-(n)..-1]

rotate_these_digits = []
rotate_these_digits = arr[(-n)..-1]
rotated_digits = []
rotated_digits << rotate_these_digits[1..-1] << rotate_these_digits[0]
rotated_digits.flatten

arr[-3..-1] = rotated_digits[0..2]

arr.flatten

rotate_these_digits = arr[-3..-1]
=> [2, 9, 1]
rotated_digits = []
=> []
rotated_digits << rotate_these_digits[1..-1] << rotate_these_digits[0]
=> [[9, 1], 2]
rotated_digits.flatten
=> [9, 1, 2]
arr[-3..-1] = rotated_digits[0..2]
=> [[9, 1], 2]
arr
=> [7, 3, 5, [9, 1], 2]
arr.flatten
=> [7, 3, 5, 9, 1, 2]


pop 3, rotate, << append

arr = [7, 3, 5, 2, 9, 1]
n = 3
rotate_this_array = arr.pop(n)
=> [2, 9, 1]

rotate_this_array
=> [2, 9, 1]
rotated_digits_array = []

rotated_digits = []
=> []
rotated_digits << rotate_this_array[1..-1] << rotate_this_array[0]
=> [[9, 1], 2]
rotated_digits.flatten
=> [9, 1, 2]
arr
=> [7, 3, 5]
arr << (rotated_digits.flatten)
=> [7, 3, 5, [9, 1, 2]]
arr.flatten
=> [7, 3, 5, 9, 1, 2]



pop 3, rotate, << append

arr = [7, 3, 5, 2, 9, 1]
n = 2
rotate_this_array = arr.pop(n)

rotated_digits_array = []

rotated_digits_array << rotate_this_array[1..-1] << rotate_this_array[0]

arr << (rotated_digits_array.flatten)

arr.flatten




rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917


def rotate_rightmost_digits(num, digits)


arr = num.to_s.split(//) 
# [7, 3, 5, 2, 9, 1]
# num = 2
rotate_this_array = arr.pop(digits)

rotated_digits_array = []

rotated_digits_array << rotate_this_array[1..-1] << rotate_this_array[0]

arr << (rotated_digits_array.flatten)

arr.flatten.join.to_i

end















*************************************************JMX

def rotate_rightmost_digits(num, digits)
  arr = num.to_s.split(//)
  rotate_this_array = arr.pop(digits)
  rotated_digits_array = []
  rotated_digits_array << rotate_this_array[1..-1] << rotate_this_array[0]
  arr << (rotated_digits_array.flatten)
  arr.flatten.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

*************************************************JMX Refactored
# Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 2) == 735219

access the last 2 digits of the array
rotate the digits 
put them back on 


# helper method and array plus array

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end


def rotate_rightmost_digits(num, digits)
  num = num.to_s.split(//)
  arr = num[0..(-(digits)-1)] + (rotate_array(num[-(digits)..-1]))
  arr.flatten.join.to_i
end

*************************************************JMX Final
# helper method and reassign the last elements of the num array

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, digits)
  num = num.to_s.split(//)
  num[-digits..-1] = rotate_array(num[-digits..-1])
  num.flatten.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917





*************************************************LS 


def rotate_array(array)
  array[1..-1] + [array[0]]
end


def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end









