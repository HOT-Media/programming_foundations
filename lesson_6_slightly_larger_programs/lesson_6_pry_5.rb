require 'pry'
require 'pry-byebug'

def double_num(num)
  num + 2
end


def double_evens_two(arr)
  new_arr = arr.select do |num|
    binding.pry
    double_num(num) if num.even?
  end
  p new_arr
end

double_evens_two [2,3,4,5]