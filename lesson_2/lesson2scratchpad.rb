
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


zero validate individually in the get data loop 
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


#done
output data in 2 decimal places
'%.2f' % [(5.101 * 100).round / 100.0] # => "5.10"

x = 5.101
'%.2f' % [(x * 100).round / 100.0]


