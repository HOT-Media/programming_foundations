def input_cleanup(clean)
  clean.gsub(/[, ' ' ' %  $ ]/, '')
end

def pct(x)
  x.gsub(/[' ' ]/, '').start_with?("%") # true if starts with %
end

def number?(x)
  x = x.gsub(/[, ' ' ' %  $ ]/, '')
  if x.to_f < 0
    return false
  end
  y = x
  fl = x
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
    prompt("Make sure to use a valid name with letters only.")
  else
    break
  end
end

prompt("Hi #{name}")

# START OVER HERE IF CALCULATE AGAIN IS YES

loop do

  la = ''
  loop do
    prompt("What's the loan amount?")
    la = Kernel.gets().chomp()
    if number?(la) # true
      la = la.gsub(/[, ' ' ' %  $ ]/, '') 
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
    if number?(apr) && pct(apr) == false 
      apr = input_cleanup(apr)
      j = apr.to_f * 0.01 / 12
      break 
    elsif number?(apr) && pct(apr) 
      prompt "The interest rate can not begin with the %\ symbol.
  Enter a valid number with the %\ sign in the correct location."
    elsif apr.to_i.negative?
      prompt("The apr can't be negative")
    elsif number?(apr) == false 
      prompt("Please enter a valid number")
    end
  end

  duration = ''
  x = ''
  n = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    x = duration.to_f.to_s == duration 

    n = case
        when duration.to_i.negative?
          prompt("The duration can't be negative.")
        when number?(duration) == false
          prompt("Enter a number for the duration of the loan")
        when duration.to_f * 12 % 2 != 0
          prompt("We lend in 6 month increments")
        when duration == "0" || duration == "0.0"
          prompt("The term of the loan can't be zero")
        when  number?(duration) && x == false then n = duration.to_f * 12.0
        when  number?(duration) && duration.to_f * 12 % 2 == 0 then n = duration.to_f * 12.0
        end
    if n != nil
      break
    end
  end

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

  m = '%.2f' % [(m * 100).round / 100.0]
  
  prompt("The monthly payment for a $#{la.to_i} at #{apr}%\ interest,
   for #{duration} years, is: $#{m} per month.")


 
 #answer = gets().chomp()

#answer = exit_letter_validation(answer)


#def exit_letter_validation(str)
 # str.to_i.to_s == str
  #str.to_f.to_s == str
 # str.to_s == str
  #str == "f"
#end



# answer = exit_letter_validation(answer)
#=> "f" 
#answer = "f" -> break 

=begin
quit loop do 
  puts "quit y or f"
  answer = gets.chomp

    break if answer == "y" || answer == "f"
    #if number ask again
    puts "only y or f accepted"
      end

=end
puts 

answer = ''
loop do 
  prompt("Would you like to continue? Enter 'Y' or 'N'")
  answer = gets().chomp()
    if answer.downcase == "y" || answer.downcase == "n"
      break
    else
      prompt("Only 'Y' or 'N' are accepted.")
      puts
    end
end

break if answer.downcase == "n"



#answer = "y"
# break if answer == "f"

#answer = "3"
# ask again 

 # answer = "f"
 # break if answer == "f"

end



prompt('Thank you for using monthly payment calculator, good bye!')








