A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values.

Each operation in the language operates on a register, which can be thought of as the current value.

The register is not part of the stack.

Operations that require two values pop the topmost item from the stack

(that is, the operation removes the most recently pushed value from the stack), 

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





Each operation in the language operates on a register, which can be thought of as the current value.

The register is not part of the stack.

Operations that require two values pop the topmost item from the stack

(that is, the operation removes the most recently pushed value from the stack), 

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


PUSH   Push the register value on to the stack. Leave the value in the register.
ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB    Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT   Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV    Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD    Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP   Remove the topmost item from the stack and place in register
PRINT   Print the register value





n Place a value n in the "register". Do not modify the stack.


num = 'n' #current value

stack = []



PUSH   Push the register value on to the stack. Leave the value in the register.

PUSH = stack << num



ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.

SUB    Pops a value from the stack and subtracts it from the register value, storing the result in the register.

MULT   Pops a value from the stack and multiplies it by the register value, storing the result in the register


DIV    Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD    Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP   Remove the topmost item from the stack and place in register
PRINT   Print the register value

















num = 'n' #current value

stack = []


case operation

when PUSH then stack << num 

when ADD then num = num + (stack.pop)

when SUB then num = num - (stack.pop)

when MULT then num = num * (stack.pop)

when DIV then num = num / (stack.pop)

when MOD then num = num % (stack.pop)

when POP then num = stack.pop

when PRINT then p num

















