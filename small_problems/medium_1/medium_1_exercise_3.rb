
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, digits)
  num[-digits..-1] = rotate_array(num[-digits..-1])
  num.flatten.join.to_i
end

def max_rotation(num)
  arr = num.to_s.split(//)
  return num if arr.length == 1
  digits_to_rotate = arr.length
  maximum_rotation = nil

  loop do
    maximum_rotation = rotate_rightmost_digits(arr, digits_to_rotate)
    digits_to_rotate -= 1
    break if digits_to_rotate == 1
  end
  maximum_rotation
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
