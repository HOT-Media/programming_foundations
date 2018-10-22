If you take a number like 735291, and rotate it to the left, you get 352917. 

If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 

Keep the first 2 digits fixed in place and rotate again to 321759. 

Keep the first 3 digits fixed in place and rotate again to get 321597. 

Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 

The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Example:
```ruby
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845






735291

 3 52917 rotate 52917
 3              29175

 32 9175
 32 1759

 321 759
 321 597

 3215 97
 3215 79


 321579

arr = 735291.to_s.split(//)
=> ["7", "3", "5", "2", "9", "1"]

original number is rotation 1 default
last number is rotation 2
arr.length - 2

rotations = (arr.length) -1

rotate 5 times

first rotation rotate n digits
second rotation rotate n-1 digits
third rotation rotate n -1 digits 
fourth rotation rotate n-1 digits


pop rotate << append

pop rotations 4 rotate append
pop rotations 3
              2
              1



rotations => 4




first iteration rotate idx 1..-1
2..-1
3..-1
4..-1



num = 735291

arr = num.to_s.split(//)
=> ["7", "3", "5", "2", "9", "1"]

arr.pop(rotations)

735291, 1 == 735291


def rotate_rightmost_digits(num, digits)
  arr = num.to_s.split(//)
  rotate_this_array = arr.pop(digits)
  rotated_digits_array = []
  rotated_digits_array << rotate_this_array[1..-1] << rotate_this_array[0]
  arr << (rotated_digits_array.flatten)
  arr.flatten.join.to_i
end

always rotating the first digit of the popped array




arr = ["7", "3", "5", "2", "9", "1"]

elements 6
last_digits 5
rotations 4


count the elements => 6

rotate_last_digits_of_arr = (arr.length) -1 => 5

rotations = (array.length) -2 => 4



rotations
pop(rotate_last_digits_of_arr 5) 4 rotate and  append to arr << 
arr = ["7", "3", "5", "2", "9", "1"]
arr_to_method = arr.pop(rotate_last_digits_of_arr 5) => ["3", "5", "2", "9", "1"] 


rotate the first digit to the last digit 

rotate_array(arr_to_method)

arr << 

def rotate_array(arr)
 rotated = []
 rotated << arr[1..-1] << arr[0]
 rotated.flatten
end












arr = ["7", "3", "5", "2", "9", "1"]

elements 6
last_digits 5
rotations 4


count the elements => 6

rotate_last_digits_of_arr = (arr.length) -1 => 5

rotations = (array.length) -2 => 4



rotations
pop(rotate_last_digits_of_arr 5) 4 rotate and  append to arr << 
arr = ["7", "3", "5", "2", "9", "1"]
arr_to_method = arr.pop(rotate_last_digits_of_arr 5) => ["3", "5", "2", "9", "1"] 


rotate the first digit to the last digit 

rotate_array(arr_to_method)

arr << 

def rotate_array(arr)
 rotated = []
 rotated << arr[1..-1] << arr[0]
 rotated.flatten
end



arr = ["7", "3", "5", "2", "9", "1"]



number of rotations
digits to rotate on each rotation
count down rotations 4 3l2l1
countdown digits to rotate

array.length => 6

digits_to_rotate = (arr.length) -1 => 5

rotations = (array.length) -2 => 4



I want an array with the last 5 digits of arr
                              4
                              3
                              2


first rotation, rotations = 4
                digits_to_rotate = 5
loop do 
arr_to_def = arr.pop(digits_to_rotate) #  5  => ["3", "5", "2", "9", "1"]
#arr is ["7"]

 # rotate the digits 
  # rotate_array(arr_to_def) => ["5", "2", "9", "1", "3"] and append to arr ["7"]

  arr << rotate_array(arr_to_def)

  #  rotation -= 1 # 3,2,1,0
  # rotate 2 digits, last iteration subtract 1, digits_to_rotate == 1
  digits_to_rotate -= 1 # 4,3,2
  break if digits_to_rotate == 1 
end




rotations
pop(rotate_last_digits_of_arr 5) 4 rotate and  append to arr << 
arr = ["7", "3", "5", "2", "9", "1"]
arr_to_method = arr.pop(rotate_last_digits_of_arr 5) => ["3", "5", "2", "9", "1"] 



** ** ** *
num = 735291
arr = num.to_s.split(//)
arr = ["7", "3", "5", "2", "9", "1"]

first rotation, rotations = 4
                digits_to_rotate = 5
loop do 
arr_to_def = arr.pop(digits_to_rotate) #  5  => ["3", "5", "2", "9", "1"]
#arr is ["7"]

 # rotate the digits 
  # rotate_array(arr_to_def) => ["5", "2", "9", "1", "3"] and append to arr ["7"]

  arr << rotate_array(arr_to_def)

  #  rotation -= 1 # 3,2,1,0
  # rotate 2 digits, last iteration subtract 1, digits_to_rotate == 1
  digits_to_rotate -= 1 # 4,3,2
  break if digits_to_rotate == 1 
end





def rotate_array(arr)
 rotated = []
 rotated << arr[1..-1] << arr[0]
 rotated.flatten
end









