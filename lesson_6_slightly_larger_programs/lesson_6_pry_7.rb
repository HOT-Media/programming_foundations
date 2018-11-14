# Write a method that takes an Array as an argument and returns a 
# new array with the even integers multiplied by 100 

# p double_evens [1,2,3,4,5] => [1,200,3,400,5]

require 'pry'
require 'pry-byebug'

def double_num(num)
  num * 10
end

def double_evens(arr)
  arr.map do |num|
    binding.pry
    new_num = num.even? ? double_num(num) : num
  end
end

 p double_evens([2,3])
