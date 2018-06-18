require "pry"

def instrip (strip)
  strip = strip.gsub(/[, ' ' ' %  $ ]/, '')
end

def pct (x)
  x.start_with?("%") # true if starts with %
end

def number?(x)
  x = x.gsub(/[, ' ' ' %  $ ]/, '')
  y = x
  fl = x
  return false if x == "0.0"
  return false if x == "0"
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
      la = la.to_f # convert to a float
      break 
    else
      prompt("Please enter a valid number.")
    end
  end


  apr = ''
  j = ''
  loop do
    prompt("What's the annual percentage rate?")
    apr = Kernel.gets().chomp()
    if number?(apr)
      apr = apr.gsub(/[, ' ' ' %  $ ]/, '')
      j = apr.to_f * 0.01 / 12
      break # if apr is an integer or float break
    else
      prompt("Please enter a valid number.")
    end
  end



  duration = ''
  n = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    if number?(duration)
      #instrip(duration)
      n = duration.to_f * 12.0
      break # if duration is an integer or float
    else
      prompt("Please enter a valid number.")
    end
  end


m = la * (j / (1 - (1 + j)**(-n)))
#m = m.truncate(3).round(2)
puts m
puts m.truncate(3)
puts la.class
puts j.class
puts n.class
puts la * (j / (1 - (1 + j)**(-n))) # chop down to .00
  prompt("The monthly payment for a $#{la} at #{apr}%\ interest, for #{duration} years,
   is: #{m} per month.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end



prompt('Thank you for using monthly payment calculator, good bye!')









