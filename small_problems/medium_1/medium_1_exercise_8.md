The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2
Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end
sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

They call themselves at least once.
They have a condition that stops the recursion (n == 1 above).
They use the result returned by themselves.
In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

This exercise is a lead-in for the next two exercises. It verges on the Advanced level, so don't worry or get discouraged if you can't do it on your own. Recursion is tricky, and even experienced developers can have trouble dealing with it.









Examples:
```ruby 
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765


def double_this_number (starting_number)

    # this code is executed one time:
    puts starting_number * 2 

# exit the method definition here:  
end

# call the method double_this_number
# pass in 10 as an argument
# to the parameter (starting_number)
double_this_number (10)

=> 20
=> nil

# call the double_this_number
# pass in 20 as the argument
# to the parameter starting_number
double_this_number (20)

=> 40
=> nil


def double_this_number (starting_number)
  puts starting_number * 2 
end


def my_recur (stn)
    puts stn
    if stn < 10
    my_recur (stn * 2)
    end
end

stn = 5
=> 5

if stn < 10
 
my_recur


it seems like in recurrsion one cant exist without the other.
a method cant be made to be recursive

a recursive method has to be defined

this is my motorcycle
 this is my motorcycle motorcycle


# The if statement is written as number < 2 because Fibonacci number
1 is 1 
and fibonacci number 2 is 1

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

all fibbonacii number calculations are based on a rooted system that branches out
from the requested fibonacci number. t
 
The next Fib(n) is n + Previous(n)

 the fibonacci number 6 reduces to fibonacii
  5 and 4
                          6
                    5           4
               4       3       3        2
            3    2   2  1    2   1    1   0
          2  1  1 0  1 0  0   1  0   0   0
        1 0



calculating the nth fibonacci number means reversing the process of the next Fibonacci 
number




Fn 1 1
Fn 2 1
Fn 3 2

how was Fn 3 calculated
  by adding Fn 1 to  Fn 2

how can I find out what Fn 2 is from Fn 3

Fn 3 can not exist without Fn 1 or 2, so given 3, there has to be a 1 and 2

so to determine either the 1st or second Fn I can use 

Fn 3 which is 2 
Fn 1 which is 1

so Fn 2 is Fn 3 - Fn 1 


Fn 6 is 8

6 8
5 5
4 3
3 2
2 1
1 1




Fn  10 55
    9 34
    8 21
    7 13
    6 8
    5 5
    4 3
    3 2
    2 1
    1 1



def jmxfn (n)
 n = 10
 1..10.reduce




function reverse(str) {
  if (str.length === 0) return ''
  return str[str.length - 1] + reverse(str.substr(0, str.length - 1))
}
reverse('abcdefg');


function reverse(string) {
  // Base case
  if (string.length < 2) return string;
  // Recursive case
  return reverse(string.slice(1, string.length)) + string[0];
}





def reverse(string) 
  # Base case
  if string.length < 2
   string
  # Recursive case
  else
   reverse(string.slice(1, string.length)) + string[0]
 end


string = 'abcde'

string = 'abcde'
=> "abcde"
def reverse(string) 
  # Base case  
  if string.length < 2  
    string   
    # Recursive case  
  else    
    reverse(string.slice(1, string.length)) + string[0]   
  end   
end  
=> :reverse
reverse string
=> "edcba"





my_recur(5)
# 5 is less than 10
# What happens when Ruby executes the next line?
# The method definition my_recur(5) calls it's self with an argument of stn * 2, which is 10
  # Inside the nested my_recur(stm * 5) 
    # stn is greater than 

def my_recur (stn)
    puts stn # 5
    if stn < 10
    my_recur (stn * 2)
    end
end
# Ruby returns the return value of the nested my_recur(stn * 2)













Fib(n) is a reduction to 1 then count the number of ones

2 -1 
2-2
0 1

Recuce to 1




subtract 1 and 2 from the Fib(n) until the last reduction is 1 and zero because 



Fib(1) is already Fib(1) so no calculation needs to be double_this_number

Find Fib(1) => 1



fib 2 is 1 as well

find the second Fib(2)

Fib3 2


The next number is found by adding up the two numbers before it.



The 2 is found by adding the two numbers before it (1+1)
The 3 is found by adding the two numbers before it (1+2),
And the 5 is (2+3),




*************************************************GOOGLE


def fib_calc(num)
  return num if num < 2
 fib_calc(num - 1) + fib_calc(num - 2)
end



# In the recursive method sum(1)
# Ruby returns 1

# In the recursive method sum(2)
# Ruby executes 2 + sum(1) which is 1
=> 2 + 1 = 3
def sum(n) 
  return 1 if n == 1
  n + sum(n - 1)   
end
# Recurrsion is almost like a reverse loop














