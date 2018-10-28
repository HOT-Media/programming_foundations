def minilang(input_string)
  register = 0
  stack = []
  command = input_string.split(' ')

  loop do
    operation = command.shift
    register = operation.to_i if operation == operation.to_i.to_s
    case operation
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
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
