require 'pry'
require 'pry-byebug'


def double_num(num)
  num + 2
end

def double_evens(arr)
  narr= []
  arr.map do |num|
    binding.pry 
   # when num.even? is true, step into double_number(num) to see why
   # num is num + 2
   num.even? ?  double_num(num) : num 
   narr << num
  end
  narr
end

p double_evens([5,6,7,8,9]) == [5,12,7,16,9]
p double_evens([5,6,7,8,9])
