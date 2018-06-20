
=begin

monlthy_payment = la * (j / (1 - (1 + j)**(-n)))
                        .01  1 -   1+ .01 ** -36
                              1 -   (    .696    )
                              0.3010750503727413
                          .01  

               dividend = monthly_percentage_rate * loan_amount 
               divisor = 1 - (1 + monthly_percentage_rate)**  - duration_in_months
               quotient = 

 
m monthly payment 
p = loan amount   10000
j = monthly interest rate 1
n = loan duration in months 36




m = p * (j / (1 - (1 + j)**(-n)))

m = 10000 * (0.065 / (1 - (1+ 0.065)**(-36)))

"10,0 00".gsub(/[, ' ' ' % ]/, '')


def instrip (strip)
  strip = strip.gsub(/[, ' ' ' %  $ ]/, '')
end  
return false .start_with?("%")


def pct (x)
  return false if x.start_with?("%")
end









def number?(x)
  x = instrip (x)
  #x = x.gsub(/[, ' ' ' %  $ ]/, '')
  y = x
  fl = x
  return false if x == "0.0"
  return false if x == "0"
  x.to_i.to_s == y || x.to_f.to_s == fl
end


loop do
    prompt("What's the annual percentage rate?")
    apr = Kernel.gets().chomp()
    loop do 
    if pct (apr)
      break
    else prompt ("The interest rate can not begin with the %\ symbol") 
    end 
    if number?(apr)
      #instrip(j)
      j = apr.to_f * 0.01 / 12
      break # if apr is an integer or float break
    else
      prompt("Please enter a valid number.")
    end
  end
=end

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



apr = ''
  j = ''
loop do
    prompt("What's the annual percentage rate?")
    apr = Kernel.gets().chomp()

      if number?(apr) && pct(apr) == false # safe to clean up data
        apr = instrip(apr)
        j = apr.to_f * 0.01 / 12
        break # if apr is an integer or float break and does not start with %

               # vali number but % in front
      elsif number?(apr) && pct(apr) # true and true
        prompt ("The interest rate can not begin with the %\ symbol")
        prompt ("Please enter a valid number with the %\ sign in the correct location.")

      elsif 
        number?(apr) == false  &&   #pct(apr) == nil
        prompt("Please enter a valid number")
  end
end


puts apr
puts j

'%.2f' % 500


prompt =<<-MSG
"The monthly payment for a la.to_i at 4% interest,
for 4 years, is: $ 588 per month.")
MSG



years = "$25,000.00"


DONE
0 works with ammount and apr

reject -negative input for  duration, ammount, apr
-8.negative? true
if true ...



2.5 * 12 % 2 == 0
=> true
if n % 2 == 0 break
works with half years .5


reject 0 duration
if duration == "0" ... 


DONE
output data in 2 decimal places
x = 5.101
'%.2f' % [(x * 100).round / 100.0]
****************************************************

def prompt(message)
  Kernel.puts("=> #{message}")
end

zero and zero.zero passes as a valid integer
def number?(x)
  x = x.gsub(/[, ' ' ' %  $ ]/, '')
  y = x
  fl = x
  #return 0.0 if x == "0.0"
  #return 0 if x == "0"
  x = "0" if x == "0.0"
  x.to_i.to_s == y || x.to_f.to_s == fl
end

loop do
  la = ''
  loop do
    prompt("What's the loan amount?")
    la = Kernel.gets().chomp()
    if number?(la) # == true && number?(la) == "0.0" # true
      la = la.gsub(/[, ' ' ' %  $ ]/, '') # remove other characters
      la = la.to_f.truncate(2)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  if j == 0

    m = la * (j / (1 - (1 + j)**-n))

    la / 36
    la / n

loop do 
  if j == 0
    m = la / n
    break
  else
    m = la * (j / (1 - (1 + j)**-n))
    break
  end
end

  puts m

  m = '%.2f' % [(m * 100).round / 100.0]


duration 
2.5 * 12 % 2 == 0
=> true
if n % 2 == 0 break
works with half years .5


duration comes in as a float or integer 
duration = ''
  n = ''
  x = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    #x = duration.to_i.to_s == duration.to_f.to_s
    x = duration.to_f.to_s == duration # true if float false if integer
    if number?(duration) && x == false # 3  pass
      n = duration.to_f * 12.0
      break # if duration is a valid integer or float, and duation is an integer
      # input_cleanup(duration)
    elsif number?(duration) &&  duration.to_f * 12 % 2 == 0                #duration.include?(".5")  
      n = duration.to_f * 12.0
      break # if duration is an integer or float
    else
      prompt("Please enter a valid number.")
    end
  end

def flori(x)
if x is an integer
  3
  if duration float
    3.5

if x * 2 % 2 == 0

      3.5     3    "3"  ==  3.5    3.5 
x = duration.to_i.to_s == duration.to_f.to_s

duration.to_i == true && duration.to_f == true
duration.to_i == duration
duration.include? ".5"   #=> true


duration is already a string "3.5"
if duration to_f == duration true 
     "3.5".to_s  = duration 


float starts as a float, converted to a float is still a float when converted to a string.
x.to_f.to_s == x


fix accepts 0 as duration
fix accepts negative numbers for all questions.

duration = ''
  n = ''
  x = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    #x = duration.to_i.to_s == duration.to_f.to_s
    x = duration.to_f.to_s == duration # true if float false if integer
    if number?(duration) && x == false # 3  pass
      n = duration.to_f * 12.0
      break # if duration is a valid integer or float, and duation is an integer
      # input_cleanup(duration)
    elsif number?(duration) &&  duration.to_f * 12 % 2 == 0                #duration.include?(".5")  
      n = duration.to_f * 12.0
      break # if duration is an integer or float
    else
      prompt("Please enter a valid number.")
    end
  end






accept .5 
and reject 0 without crashing.

duration = ''
  n = ''
  x = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    #x = duration.to_i.to_s == duration.to_f.to_s
    x = duration.to_f.to_s == duration # true if float false if integer
    puts duration
    puts duration.class
    puts x
    puts x.class
case duration
when number?(duration) # && x == false
  n = duration.to_f * 12.0
  break
when number?(duration) &&  duration.to_f * 12 % 2 == 0
  n = duration.to_f * 12.0
  break
when duration == '0' || '0'
  prompt("We don't lend for 'zero' time. Enter a number other than 0")
else
  prompt("We lend for durations incremented by 6 months, or half years.
  A valid duration for a 5 1/2 year loan would be 5.5 etc.")
  end
end

