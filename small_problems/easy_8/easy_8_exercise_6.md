Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:
```ruby

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz




def fizbuzz(starting_num, ending_num)

starting_num = 1
ending_num = 15

integer_arr = Array(1..15)

integer_arr = Array(starting_num..ending_num)


int_fzz_bzz = integer_arr.map do |idx|
  if idx % 3 == 0 && idx % 5 == 0
    "Fizz"
  elsif idx % 5 == 0 
    "Buzz"
  elsif idx % 3 == 0 
   "Fizz Buzz"
  else
  idx
  end
  end    
end



int_fzz_bzz
=> [1,
 2,
 "Fizz Buzz",
 4,
 "Buzz",
 "Fizz Buzz",
 7,
 8,
 "Fizz Buzz",
 "Buzz",
 11,
 "Fizz Buzz",
 13,
 14,
 "Fizz"]







def fizbuzz(starting_num, ending_num)

starting_num = 1
ending_num = 15

integer_arr = Array(starting_num..ending_num)
replacement_word = ''
case number
when % 3 == 0 
 replacement_word = "Fizz"
end

when % 5 == 0 then "Buzz"
when % 3 == 0 && % 5 == 0 then "Fizz Buzz"
end



a = 5
case a
when 5 # when a == 5
  puts "a is 5"
when 6 # when a == 6
  puts "a is 6"
else
  puts "a is neither 5 or 6"
end








def fizbuzz(starting_num, ending_num)

  starting_num = 1
  ending_num = 15
  integer_arr = Array(1..15)
  integer_arr = Array(starting_num..ending_num)

  int_fzz_bzz = integer_arr.map do |idx|
    if idx % 3 == 0 && idx % 5 == 0
      "Fizz Buzz"
    elsif idx % 5 == 0 
      "Buzz"
    elsif idx % 3 == 0 
     "Fizz"
    else
    idx
    end
  end    
end


[1,
 2,
 "Fizz Buzz",
 4,
 "Buzz",
 "Fizz Buzz",
 7,
 8,
 "Fizz Buzz",
 "Buzz",
 11,
 "Fizz Buzz",
 13,
 14,
 "Fizz"]


*************************************************JMX

def fizzbuzz(starting_num, ending_num)
  integer_arr = Array(starting_num..ending_num)

  int_fzz_bzz = integer_arr.map do |idx|

    if idx % 3 == 0 && idx % 5 == 0
      "Fizz Buzz"
    elsif idx % 5 == 0
      "Buzz"
    elsif idx % 3 == 0
      "Fizz"
    else
      idx
    end

  end
  int_fzz_bzz.join(" ,")
end

fizzbuzz(1, 15) 

# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

*************************************************LS


def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end



number = 3
case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end





case number
  when  % 4 == 0 &&  % 5 == 0
    'FizzBuzz'
  when  % 5 == 0
    'Buzz'
  when  % 3 == 0
    'Fizz'
  else
    number
  end














