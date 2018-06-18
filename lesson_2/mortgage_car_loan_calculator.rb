require "pry"
=begin
Our operation_to_message method is a little dangerous,
because we're relying on the case statement being the last
expression in the method.

What if we needed to add some code after the case statement
within the method? What changes would be needed to keep
the method working with the rest of the program?
=end

def number?(x)
  y = x
  fl = x
  return false if x == "0.0"
  return false if x == "0"
  x.to_i.to_s == y || x.to_f.to_s == fl
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def operation_to_message(op)
  y = case op
      when '1'
        'Adding'
      when '2'
        'Subtracting'
      when '3'
        'Multiplying'
      when '4'
        'Dividing'
      end
  p "This is is code after the case statement"
  y
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    if number?(number1)
      break # if valid_number? true:  break
    else
      prompt("Please enter a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  operator_prompt = <<-Message # Message is the delimiter
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  Message
  # Message is the delimiter
  # The characters after <<- can be anything they just have to match
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt('Thank you for using calculator, good bye!')
