def input_cleanup(clean)
  clean.gsub(/[, ' ' ' %  $ ]/, '')
end

def pct(x)
  x.gsub(/[' ' ]/, '').start_with?("%") # true if starts with %
end
=begin 
def number?(x)
  x = x.gsub(/[, ' ' ' %  $ ]/, '')
  y = x
  fl = x
  #return false if x == "0.0"
  #return false if x == "0"
  x.to_i.to_s == y || x.to_f.to_s == fl
end
=end

=begin 
def number?(x)
  x = x.gsub(/[, ' ' ' %  $ ]/, '')
  y = x
  fl = x
  #return 0.0 if x == "0.0"
  #return 0 if x == "0"
  x = "0" if x == "0.0"
  x.to_i.to_s == y || x.to_f.to_s == fl
end
=end
def number?(x)
  x = x.gsub(/[, ' ' ' %  $ ]/, '')
  if x.to_f < 0
    return false
  end
  y = x
  fl = x
  #return 0.0 if x == "0.0"
  #return 0 if x == "0"
  x = "0" if x == "0.0"
  x.to_i.to_s == y || x.to_f.to_s == fl
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def calculate_monthly_payment
  true
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
  la = ''
  loop do
    prompt("What's the loan amount?")
    la = Kernel.gets().chomp()
    if number?(la) # true
      la = la.gsub(/[, ' ' ' %  $ ]/, '') # remove other characters
      la = la.to_f.truncate(2)
      break
    elsif la.to_i.negative? == true
      prompt("the loan amount can't be negative")
    else
      prompt("Please enter a valid number.")
    end
  end

  apr = ''
  j = ''
  loop do
    prompt("What's the annual percentage rate?")
    apr = Kernel.gets().chomp()
    if number?(apr) && pct(apr) == false # safe to clean up data
      apr = input_cleanup(apr)
      j = apr.to_f * 0.01 / 12
      break # if apr is an integer or float break and does not start with %
    # valid number but % in front
    elsif number?(apr) && pct(apr) # true and true
      prompt "The interest rate can not begin with the %\ symbol.
  Enter a valid number with the %\ sign in the correct location."
    elsif number?(apr) == false # && pct(apr) == nil
      prompt("Please enter a valid number")
    end
  end


duration = ''
x = ''
n = ''
loop do  
  prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
   x = duration.to_f.to_s == duration # duration is "3" - false

  n = case 
  when duration.to_i.negative?
    prompt("The duration can't be negative.")
  when number?(duration) == false
    #puts "Enter a number for the duration of the loan"
    prompt("Enter a number for the duration of the loan")

    # duration is a valid number to get here:
  when duration.to_f * 12 % 2 != 0
    puts "We lend in 6 month increments"
    prompt("We lend in 6 month increments")

  when duration == "0" || duration == "0.0"
    puts "The term of the loan can't be zero"
    prompt(puts "The term of the loan can't be zero")
      #valid number       and    integer
        #true             and    true 
  when  number?(duration) && x == false       then n = duration.to_f * 12.0


             # valid number and   valid float with .5
  when  number?(duration) && duration.to_f * 12 % 2 == 0  then n = duration.to_f * 12.0


  end

  if n != nil
    break
  end

end
puts "this is #{n}"

m = nil
loop do 
  if j == 0
    m = la / n
    break
  else
    m = la * (j / (1 - (1 + j)**-n))
    break
  end
end
#puts m

  m = '%.2f' % [(m * 100).round / 100.0]
  # puts m
  # puts la.class
  # puts j.class
  # puts n.class
  prompt("The monthly payment for a $#{la.to_i} at #{apr}%\ interest,
   for #{duration} years, is: $#{m} per month.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for using monthly payment calculator, good bye!')
