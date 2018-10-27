A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

arr.push(5)
arr.pop

A stack-and-register programming language is a language that uses a stack of values.

Each operation in the language operates on a register, which can be thought of as the current value.

The register is not part of the stack.


adding, subtracting, multiplying, dividing divmod pop the topmost item from the stack

(that is, the operation removes the most recently pushed value from the stack), 

stack = [1,2,3]
stack.push(4)
stack = [1,2,3,4]

perform the operation using the popped value and the register value, 

and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. 

It multiplies the stack value with the register value,

removes the value from the stack, and then stores the result back in the register. 

Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack),

and a register value of 7, 

then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the register. 

If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n   Place a value n in the "register". Do not modify the stack.
PUSH   Push the register value on to the stack. Leave the value in the register.
ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB    Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT   Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV    Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD    Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP   Remove the topmost item from the stack and place in register
PRINT   Print the register value


All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

Examples:

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)


A stack-and-register programming language is a language that uses a stack of values.

Each operation in the language operates on a register, which can be thought of as the current value.

The register is not part of the stack.


adding, subtracting, multiplying, dividing divmod pop the topmost item from the stack

(that is, the operation removes the most recently pushed value from the stack), 

stack = [1,2,3]
stack.push(4)
stack = [1,2,3,4]

stack.pop
=> 4
register = 4


perform the operation using the popped value and the register value,

4 * 4 

and then store the result back in the register.

register = register * 4
register
=> 16


Consider a MULT operation in a stack-and-register language. 

It multiplies the stack value with the register value,

removes the value from the stack, and then stores the result back in the register. 

Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack),

and a register value of 7, 

then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the register. 

If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.




Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n   Place a value n in the "register". Do not modify the stack.
PUSH   Push the register value on to the stack. Leave the value in the register.
ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB    Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT   Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV    Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD    Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP   Remove the topmost item from the stack and place in register
PRINT   Print the register value







```ruby
the current value is the register

register = 7

stack = [3,6,4]

MULT operation 
  stack.pop => 4
  register * 4

MULT operation
  register = 7
  stack = [3,6,4]
  register = register * stack.pop
  register =    7     *    4
  register = 28

Perform another MULT operation with the same register and stack
MULT operation 
  register = 28
  stack = [3,6]
  register = register * stack.pop
  register =    28    *    6
  register = 168





n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
All operations are integer operations (which is only important with DIV and MOD).

# initialize register
register = 0 # current value

stack = []


case operation

when PUSH then stack << register

when ADD then register = register + (stack.pop)

when SUB then register = register - (stack.pop)

when MULT then register = register * (stack.pop)

when DIV then register = register / (stack.pop)

when MOD then register = register % (stack.pop)

when POP then register = stack.pop

when PRINT then p register



register = 0
register=> 0

stack = []
stack
=> []

string.to_i for operations

minilang('PRINT')
puts register
register
=> 0

0
# 0

def minilang(input_string)
val_oper = input_string.split(' ')
register = 0
stack = []

the first element is the  value
string.split(' ')


minilang('5 PUSH 3 MULT PRINT')
# 15
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
minilang('5 PUSH POP PRINT')
# 5
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
minilang('-3 PUSH 5 SUB PRINT')
# 8
minilang('6 PUSH')
# (nothing printed; no PRINT commands)


def minilang(input_string)
val_oper = input_string.split(' ')
  val_oper
=> ["5", "PUSH", "3", "MULT", "PRINT"]





the input string contains two types of objects
the fancy well known and understood n as number

 n string values which represent integers the fancy well known and understood n
and 
 operations


all integers and operations are one word or one integer:
PRINT 
33
separated by a space

split  on spaes

put the string into an Array


the input string will 
start with a register value
followed by an operation 

the

by default when the method is executed
the register is initialized to 0
the stack is empty []

shift each elemnt of the array and perform the operation
first element is register value
second operation







the operation 

minilang('5 PUSH 3 MULT PRINT')
# 15
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
minilang('5 PUSH POP PRINT')
# 5
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
minilang('-3 PUSH 5 SUB PRINT')
# 8
minilang('6 PUSH')


case operation

when PUSH then stack << register # the register value remains in register

when ADD then register = register + (stack.pop)

when SUB then register = register - (stack.pop)

when MULT then register = register * (stack.pop)

when DIV then register = register / (stack.pop)

when MOD then register = register % (stack.pop)

when POP then register = stack.pop

when PRINT then p register



minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

input_string = '5 PRINT PUSH 3 PRINT ADD PRINT'
=> "5 PRINT PUSH 3 PRINT ADD PRINT"
val_oper = input_string.split(' ')
=> ["5", "PRINT", "PUSH", "3", "PRINT", "ADD", "PRINT"]

shift  => assign value to register

shift => operation 

shift shift

val_oper = ["5", "PRINT", "PUSH", "3", "PRINT", "ADD", "PRINT"]



register = val_oper.shift
=> "5"  to integer 
register
=> 5



val_oper
=> ["PRINT", "PUSH", "3", "PRINT", "ADD", "PRINT"]
val_oper.shift
=> "PRINT"
PRINT register value

# 5


val_oper
=> ["PUSH", "3", "PRINT", "ADD", "PRINT"]
val_oper.shift
=> "PUSH"

when PUSH then stack << register # the register value remains in the register

register # 5
stack # []

stack << register
stack
=> [5]
register # 5



val_oper
=> ["3", "PRINT", "ADD", "PRINT"]
val_oper.shift
=> "3"

if val_oper.shift.integer? to_s.to_i integer
  register = val_oper.shift

register
=> 3



val_oper
=> ["PRINT", "ADD", "PRINT"]
val_oper.shift
=> "PRINT"


register # 3

PRINT # print register

3

val_oper
=> ["ADD", "PRINT"]
val_oper.shift
=> "ADD"

when ADD then register = register + (stack.pop)

stack
=> [5]

register
=> 3

register = register + (stack.pop)

              3     +    5

register
=> 8

val_oper
=> ["PRINT"]

PRINT
print register

8

val_oper
=> []
val_oper.pop
=> nil

  loop do # values and operations until val_oper.pop == nil




















   break if val_oper.pop == nil
  end
end




valoper = str.split

register value = valoper .pop


start loop

valoper .poppediperation
valoper .popoeration
valoper.popoperation
valoper.popoperation
valoper.pop 
nil
break
end



minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8


def minilan(input_string)

  integer_value_or_string_command = input_string.split(' ')
  => ["5", "PRINT", "PUSH", "3", "PRINT", "ADD", "PRINT"]

  register = integer_value_or_string_command.shift
  => "5"

  loop do

    integer_value_or_string_command.shift
    => "PRINT"

    integer_value_or_string_command.shift
    => "PUSH"

    integer_value_or_string_command.shift
    => "3"

    integer_value_or_string_command.shift
    => "PRINT"

    integer_value_or_string_command.shift
    => "ADD"

    integer_value_or_string_command.shift
    => "PRINT"

    integer_value_or_string_command.shift
    => nil

    break if integer_value_or_string_command.shift == nil
  end
end



command logic

case integer_value_or_string_command

#when integer register = integer 
 #   integer validation logic


when 'PUSH' then stack << register # the register value remains in register

when 'ADD' then register = register + (stack.pop)

when 'SUB' then register = register - (stack.pop)

when 'MULT' then register = register * (stack.pop)

when 'DIV' then register = register / (stack.pop)

when 'MOD' then register = register % (stack.pop)

when 'POP' then register = stack.pop

when 'PRINT' then puts register

end





case command

when 'PUSH' then stack << register # the register value remains in register

when 'ADD' then register = register + (stack.pop)

when 'SUB' then register = register - (stack.pop)

when 'MULT' then register = register * (stack.pop)

when 'DIV' then register = register / (stack.pop)

when 'MOD' then register = register % (stack.pop)

when 'POP' then register = stack.pop

when 'PRINT' then puts register

end




def command_logic(command)
  

  register = command.to_i if command == command.to_i.to_s 

  stack = []

  case command
    
  when 'PUSH' then stack << register # the register value remains in register  
    
  when 'ADD' then register = register + (stack.pop)  
    
  when 'SUB' then register = register - (stack.pop)  
    
  when 'MULT' then register = register * (stack.pop)  
    
  when 'DIV' then register = register / (stack.pop)  
    
  when 'MOD' then register = register % (stack.pop)  
    
  when 'POP' then register = stack.pop  
    
  when 'PRINT' then puts register  
    
  end  
  
end  








def command_logic(input_string)


  input_string = '5 PRINT PUSH 3 PRINT ADD PRINT'

  
  command = input_string.split(' ')

  register = command.shift.to_i if command[0] == command[0].to_i.to_s 

  stack = []

  loop do 
    command = input_string.shift
    # command = nil
  case command
    
  when 'PUSH' then stack << register # the register value remains in register  
    
  when 'ADD' then register = register + (stack.pop)  
    
  when 'SUB' then register = register - (stack.pop)  
    
  when 'MULT' then register = register * (stack.pop)  
    
  when 'DIV' then register = register / (stack.pop)  
    
  when 'MOD' then register = register % (stack.pop)  
    
  when 'POP' then register = stack.pop  
    
  when 'PRINT' then puts register  
  
  when nil then break

  end  
  
end  





def command_logic(input_string)

  register = 0
  stack = []
  input_string = '5 PRINT PUSH 3 PRINT ADD PRINT'

  command = input_string.split(' ')

  register = command.shift.to_i if command[0] == command[0].to_i.to_s 

  loop do 
      operation = command.shift
      # command = nil
    case operation 
      
    when 'PUSH' then stack << register # the register value remains in register  
      
    when 'ADD' then register = register + (stack.pop)  
      
    when 'SUB' then register = register - (stack.pop)  
      
    when 'MULT' then register = register * (stack.pop)  
      
    when 'DIV' then register = register / (stack.pop)  
      
    when 'MOD' then register = register % (stack.pop)  
      
    when 'POP' then register = stack.pop  
      
    when 'PRINT' then puts register  
    
    when nil then break
    end  
end  



minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8


assign any itneger to register
update register










def minilang(input_string)
  # input_string = '5 PRINT PUSH 3 PRINT ADD PRINT'
  register = 0
  stack = []
  
  command = input_string.split(' ')  
  #=> ["5", "PRINT", "PUSH", "3", "PRINT", "ADD", "PRINT"]

  # register = operation.shift.to_i if operation[0] == operation[0].to_i.to_s 
  # register = operation.to_i if operation == operation.to_i.to_s 

  loop do 
      operation = command.shift
      # => '5'
      register = operation.to_i if operation == operation.to_i.to_s 
       # 5 
       # register 
       # => 5
       # command = nil
    case operation 
      
    when 'PUSH' then stack << register # the register value remains in register  
      
    when 'ADD' then register = register + (stack.pop)  
      
    when 'SUB' then register = register - (stack.pop)  
      
    when 'MULT' then register = register * (stack.pop)  
      
    when 'DIV' then register = register / (stack.pop)  
      
    when 'MOD' then register = register % (stack.pop)  
      
    when 'POP' then register = stack.pop  
      
    when 'PRINT' then puts register  
    
    when nil then break

    end  
  end  
end




minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8


assign any itneger to register
update register



*************************************************JMX


def minilang(input_string)
  register = 0
  stack = []
  command = input_string.split(' ')

  loop do
    operation = command.shift
    register = operation.to_i if operation == operation.to_i.to_s 
    case operation 
    when 'PUSH' then stack << register 
    when 'ADD' then register = register + (stack.pop)
    when 'SUB' then register = register - (stack.pop)
    when 'MULT' then register = register * (stack.pop)
    when 'DIV' then register = register / (stack.pop)
    when 'MOD' then register = register % (stack.pop)
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    when nil then break
    end
  end
end

p 'PRINT'
minilang('PRINT')
p
p '5 PUSH 3 MULT PRINT'
minilang('5 PUSH 3 MULT PRINT')
p
p '5 PRINT PUSH 3 PRINT ADD PRINT'
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
p
p '5 PUSH POP PRINT'
minilang('5 PUSH POP PRINT')
p
p '3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT'
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
p
p '3 PUSH PUSH 7 DIV MULT PRINT '
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
p
p '4 PUSH PUSH 7 MOD MULT PRINT '
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
p
p '-3 PUSH 5 SUB PRINT'
minilang('-3 PUSH 5 SUB PRINT')
p
p '6 PUSH'
minilang('6 PUSH')
p



minilang('PRINT')
0
=> nil
# 0

minilang('5 PUSH 3 MULT PRINT')
15
=> nil
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
5
3
8
=> nil
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
5
=> nil
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
5
10
4
7
=> nil
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
6
=> nil
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
12
=> nil
# 12

minilang('-3 PUSH 5 SUB PRINT')
8
=> nil
# 8

minilang('6 PUSH')
=> nil
# (nothing printed; no PRINT commands)


*************************************************







