Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.

Examples:
```ruby
find_dup([1, 5, 3, 1]) == 1

find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


arr.uniq then compare the original array to the returned uniq array


arr.sort
%w(arr[0])
duplicate_arr = []
temp_array = []
arr.map do |idx|
  idx 




x.map { |idx| }




temp_array = []

put each element into an array then compare the two 
if both elements are the same
  dupl = temp array

  dupl.flaten.pop


arr.rindex { |x| x == x }


arr.detect.with_index { |e, idx| idx != arr.rindex(e) }


hash kv

duplicate_hash = {}

duplicate_array = []

iterate throug the array



if duplicate_array.include?(idx)
  puts idx
end


arr.map do |idx|
  duplicate_array << idx if comparison_array.include?(idx)  
end  



comparison_array = []
duplicate_array = []




*************************************************JMX


def find_dup(arr)
  comparison_array = []
  duplicate_array = []

  arr.map do |idx|
    if comparison_array.include?(idx)
      duplicate_array << idx
    else
      comparison_array << idx
    end
  end
  duplicate_array[0]
end






























