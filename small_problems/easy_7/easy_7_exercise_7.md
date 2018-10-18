Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:
```ruby

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667


arr.count
arr = [2, 5, 7, 11, 13, 17]

arr.reduce(:*) / arr.count
%format .000
=> 28361


multiply 0 with 1

result = arr[0]

start iterating
arr.each do |idx|
  result *= idx
end

saved ammount with idx 1
saved ammount with idx 2
saved ammount with idx 3
saved ammoutn with idx 4

result = 1
=> 1
arr.each do |idx|
  result *= idx  
end  
=> [3, 5]
result
=> 15
result / 2.0
=> 7.5



arr = [3, 5]

result = 1

arr.each do |idx|
  result *= idx  
end 

result
=> 15

result / 2.0
=> 7.5




def show_multiplicative_average(arr)
  result = 1

  arr.each do |idx|
    result *= idx  
  end 

  result /= arr.count.to_f
  format("%.3f" % result)
  # "The result is #{result}"
end



format("%.3f" % result)








def show_multiplicative_average(arr)
  result = 1

  arr.each do |idx|
    result *= idx  
  end 

  #result /= arr.count.to_f
  puts "The result is #{format("%.3f" % result /= arr.count.to_f)}"
  # "The result is #{result}"
end


*************************************************JMX




def show_multiplicative_average(arr)
  result = 1

  arr.each do |idx|
    result *= idx
  end

  puts "The result is #{format("%.3f" % result /= arr.count.to_f)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])




# bad
puts sprintf('%10s', 'hoge')
puts '%10s' % 'hoge'

# good
puts format('%10s', 'hoge')




def show_multiplicative_average(arr)
  result = 1
  arr.each {|idx| result *= idx}
  puts "The result is #{format('%.3f', result /= arr.count.to_f)}"
end

*************************************************JMX

def show_multiplicative_average(arr)
  result = 1

  arr.each do |idx|
    result *= idx
  end

  puts "The result is #{format('%.3f', result /= arr.count.to_f)}"
end


One Line .each 


def show_multiplicative_average(arr)
  result = 1
  arr.each { |idx| result *= idx }
  puts "The result is #{format('%.3f', result /= arr.count.to_f)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])


*************************************************LS 


def show_multiplicative_average(arr)
  result = 1
  arr.each { |idx| result *= idx }
  puts "The result is #{format('%.3f', result /= arr.count.to_f)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])













