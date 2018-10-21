A double number is a number with:

an even number of digits

whose left-side digits are exactly the same as its right-side digits


44, 3333, 103103, 7676 are all double numbers


odd    odd       odd
444, 334433, and 107 are not

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:
```ruby

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

return a double number unless the number is odd or not a double number


is the number of digits even or odd
  
  if the number is odd





if 



not_double_number_1 = 37

not_double_number2 = 444

double_number1 = 1010


if num is  44, 3333, 103103, 7676 are all double numbers
  num


if num.split.length % 2 == 0


even  - yes
is the first half == the second half

take the first half of the array and compare it with the second half


arr.take(num.split.lenth / 2)

if the arrays are == then 







even 
if num is  44, 3333, 103103, 7676 are all double numbers
  num





double_number1 = 1010

num_array = num.to_s.split(//)

if double even with first half && first half == second half
.length % 2 == 0 

1010
10 10

even
num.to_s.split(//).length % 2 == 0
=> true

double number
num.take(num.to_s.split(//).length % 2)







double_number1 = 10101010
=> 1010

num = 10101010

num_array = num.to_s.split(//)
=> ["1", "0", "1", "0",'1','0']

     even                             1st half == second half
if num_array.length % 2 == 0 && 



num_array.lenth == 6

divide that in half 6 / 2 = 3

arr.take 6 / 2  3 
num_array.take(num_array.length / 2) =>3


.eql



num = 10101010
=> 10101010
num_array = num.to_s.split(//)
=> ["1", "0", "1", "0", "1", "0", "1", "0"]
num_array.length
=> 8
num_array.length % 2
=> 0

num_array[0..((num_array.length / 2)-1)].eql?(num_array[0..((num_array.length / 2)-1)])



num_array.take(4) == num_array.drop(4)



str.length even
str 

str


num = 1010101




num_array = num.to_s.split(//)
=> ["1", "0", "1", "0", "1", "0", "1", "0"]





num_array = num.to_s.split(//)

take_drop = num_array.length / 2



if num_array.take(take_drop) == num_array.drop(take_drop)
  num 
else
  num * 2
end







num_array = num.to_s.split(//)
=> ["1", "0", "1", "0", "1", "0", "1", "0"]


def twice(num)
  num = 44

  num_array = num.to_s.split(//)

take_drop = num_array.length / 2



if num_array.take(take_drop) == num_array.drop(take_drop)
  num 
else
  num * 2
end




def twice(num)
  #num = 44

  num_array = num.to_s.split(//)

  take_drop = num_array.length / 2

  if num_array.take(take_drop) == num_array.drop(take_drop)
    num 
  else
    num * 2
  end

end


twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10




*************************************************JMX

def twice(num)
  num_array = num.to_s.split(//)
  take_drop = num_array.length / 2

  if num_array.take(take_drop) == num_array.drop(take_drop)
    num 
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10




















