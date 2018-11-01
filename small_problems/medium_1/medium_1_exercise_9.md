In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

Examples:
```ruby

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501



take the fib number

subtract one from it  last fn 
subtract two from it second last fn 

fibrecur
if less than 2 return one
  fibrecur(fn - 1) + fibrecur(fn - 2)




ef fib_calc(num)
  return num if num < 2
 fib_calc(num - 1) + fib_calc(num - 2)
end


starting fib number

each loop: 

subtract one 
subtract two
add them together


6
6 - 1 = 5
6 - 2 = 4

 2 numbers to loop now 


calculate for 2

is 2 greater than 1
yes

2 - 1 +
2 - 2 

1 + 0

return fib_n if fib_n < 2



loop do 

fib_n = 2


fib_n = (fib_n - 2) + (fib_n - 1)

loop do 


each loop add the sum of fibn _+ fib n 
that sum will be the previous fib number


I want the integer for fib2

that integer can only be calculated from fib 2

2 - 1 is 1
2 - 2 is 0 

fiboncaci index is 5,4,3,2,1

fib number .times do
  3.times do 


3.times {|num| puts num}
0
1
2
=> 3

   num = 0 nothing
   num = 1 return 1
   num = 2



 num 0 exit
 num 1 exit

 num 2
      num = 2
      (num - 2) + (num - 1)




5



counter = 0

3.times do |num| 
  next if num == 0  || num == 1
  counter = counter + ((num - 2) + (num - 1))

end





counter = 0

5.times do |num| 
  next if num == 0  || num == 1
((num - 2) + (num - 1))
    3           2

end


how do i take the calc 1 minus calc 2

  calc on

  calc two

  break when calc two plus ccalc one equal one
  count how many it took to go dwon to 1?



10th fib number means that 
i can start with fib 1
add 0 to itfib 









1 + 2 = 3
2+ 3 = 4
3 + 4 = 7





num = 3

fib_integer = [0,1].sum

return Fib(n) if Fib(n) < 2
  
  1st num 1
  2nd num is [0,1].sum
  2nd iteration fib_integer.sum 

break if counter = Fib(n)








fib_num = 2

fib_integer = [0,1]

counter = 1

loop do 

  counter += 1   # 2

  # first iteration for Fib(2) is

  # [0,1]                        # [0,1].sum = 1
  break if counter == fib_num   # 2 

end

fib_integer.sum







fib_num = 3

fib_integer = [0,1]

counter = 1

loop do 

  counter += 1   # 2

  
  break if counter == fib_num   # 2 


  fib_integer.push(fib_integer.sum)
  fib_integer.drop

  (fib_integer.push(fib_integer.sum)).drop(1)



  calculation_logic = 
  fib_integer[0] , [1] = 

  update the values of fib_integer
  01 1   [0,1]
  11 2
  12 3
  23 5
  35 8



sum = idx 1
idx 0 = old idx 1


for 2
  [0,1].sum
drop push



end

fib_integer.sum







fib_num = 3

fib_integer = [0,1]

counter = 1

loop do 

  counter += 1   # 2

  break if counter == fib_num   # 2 

  (fib_integer.push(fib_integer.sum)).drop(1)

end

fib_integer.sum







fib_num = 5

fib_integer = [0,1]

counter = 1

loop do 

  counter += 1   # 2

  break if counter == fib_num   # 2 

  (fib_integer.push(fib_integer.sum)).drop(1)

end

fib_integer.sum






1, 1, 2, 3, 5, 8, 13, 21, 34

fib_integer = [0,1]

(fib_integer.push(fib_integer.sum)).shift


  01 1   [0,1]  starts with Fib(2)
  11 2
  12 3
  23 5
  35 8
  5 8
  8 13






fib_num = 100

fib_integer = [0,1]

count = 1

loop do 

  count += 1   # 2

  break if count == fib_num   # 2 


  (fib_integer.push(fib_integer.sum)).shift

end

fib_integer.sum




  01 1   [0,1]  starts with Fib(2)
  11 2
  12 3
  23 5
  35 8
  5 8
  8 13




1, 1, 2, 3, 5, 8, 13, 21, 34
*************************************************JMX


def fibonacci(fib_num)
  return 1 if fib_num < 2
  fib_integer = [0,1]
  count = 1
  
  loop do 
    count += 1   # 2
    break if count == fib_num   # 2 
    (fib_integer.push(fib_integer.sum)).shift
  end
  fib_integer.sum
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(1) == 1
p fibonacci(2) == 1



*************************************************LS 

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end
```
Discussion
If you remembered that we previously encountered a procedural treatment of the Fibonacci series in the easy exercises, you may have stolen most of your solution from there. That's fine - we did too. However, we didn't stop at that point; we did a bit of refactoring after removing the indexing code, and ended up with a nice simple solution to the the problem.

This method starts out with an array of two numbers, [1, 1], to represent the first 2 numbers in the Fibonacci sequence. It then proceeds to calculate each of the Fibonacci numbers in turn, updating the array in each iteration to include the two most recent Fibonacci numbers.

This solution is extremely fast; it will compute the 100,001st Fibonacci number - a 20,899-digit number - in about a second. That's a huge improvement over the recursive solution.









```ruby
def paralell_calculation_and_assignment(10th_number_in_the_given_series)
  first, last = [1, 1]
  3.upto(10) do
    first, last = [last, first + last]
  end

  last
end

A paralell assignment will:
  create an Array 
    the array will be populated with the values assign values to variables, and create an Array at the same time.







