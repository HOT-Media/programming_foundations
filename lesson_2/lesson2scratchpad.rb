
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
when number?(duration)  && x == false
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


== 0

zero? true

zero.object_id

zero? → true or false

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


duration = ''
  n = ''
  x = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    #x = duration.to_i.to_s == duration.to_f.to_s
    x = duration.to_f.to_s == duration   true or false# true if float false if integer

       
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

x = duration.to_f.to_s == duration - true means the input was a float x = true
x = duration.to_f.to_s == duration - false means the imput was an integer x = false

#duration = ''
  #n = ''
  #x = ''

loop do  
  prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
   x = duration.to_f.to_s == duration # duration is "3" - false

  n = case 
  when number?(duration) == false
    puts "Enter a number for the duration of the loan"

    # duration is a valid number to get here:
  when duration.to_f * 12 % 2 != 0
    puts "We lend in 6 month increments"

  when duration == "0" || duration == "0.0"
    puts "The term of the loan can't be zero"
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




a = 2

case
when a == 1, a == 2
  puts "a is one or two"
when a == 3
  puts "a is three"
else
  puts "I don't know what a is"
end




=> n = 3.0 * 12

when 






mo = case a
when 1
  1 + 2
end





a = 1

case a
  when 1
    "one"
  when 2
    "two"
  when 3
    "three"
  when 4 
    "four"
  else
   "not enough"
  end





apr = ''
  j = ''
  loop do
    prompt("What's the annual percentage rate?")
    apr = Kernel.gets().chomp()
        valid number and no front %
    if number?(apr) && pct(apr) == false # safe to clean up data
      apr = input_cleanup(apr)
      j = apr.to_f * 0.01 / 12
      break # if apr is an integer or float break and does not start with %
    # valid number but % in front
    elsif number?(apr) && pct(apr) # true and true
      prompt "The interest rate can not begin with the %\ symbol.
  Enter a valid number with the %\ sign in the correct location."
#elsif apr.to_i.negative
  #prompt("The apr can't be negative")
    elsif number?(apr) == false # && pct(apr) == nil
      prompt("Please enter a valid number")
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
  elsif apr.to_i.negative?
  prompt("The apr can't be negative")
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
    prompt("We lend in 6 month increments")

  when duration == "0" || duration == "0.0"
    prompt( "The term of the loan can't be zero")
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


duration = ''
  x = ''
  n = ''
  loop do
    prompt("What's duration of the loan in years?")
    duration = Kernel.gets().chomp()
    x = duration.to_f.to_s == duration # duration is "3" - false

    n = case duration
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


def some_method
  a = 1
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

some_method

x = nil
def some_method
  a = 1
  b = 2
  x = a + b
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

puts x
some_method






gsub(/[, ' ' ' %  $ ]/, '')


loop do # main loop
  

    puts("Enter 'Y' to calculate another monthly payment.
      If you are finished calculating monthly payments,
      enter 'F'.")

    answer = Kernel.gets().chomp()

        if answer.downcase().start_with?('f')
        break
        elsif
          if answer is not y and is not f puts error message
        answer.downcase() != 'y' && answer.downcase() != 'f' 
        puts
      end
end
puts "bye"


break if answer.downcase().start_with?('f')
puts "only y and f accepted" if answer.downcase() != 'y' && answer.downcase() != 'f'
  
    

loop do # main loop
  

    puts("Enter 'Y' to calculate another monthly payment.
      If you are finished calculating monthly payments,
      enter 'F'.")

    answer = Kernel.gets().chomp()
   break if answer.downcase().start_with?('f')
    puts "only y and f accepted" if answer.downcase() != 'y' && answer.downcase() != 'f'
   end


def l(str)
  if str.to_i.to_s == str #- true
    p("Numbers are not accepted, enter Y or F")
  elsif str.to_f.to_s == str#- true
    p("Numbers are not accepted, enter Y or F")
  else
    true
end

    
big loop to exit

 
loop do for exit validation
  quit y or n
  if y break
    if n ask again



  loop do 
    prompt("Enter 'Y' to calculate another monthly payment.
    If you are finished calculating monthly payments,
    enter 'F'.")

    answer = Kernel.gets().chomp()
    
    break if answer.downcase().start_with?('f')
    
    prompt ("only y and f accepted") if answer.downcase() != 'y' && answer.downcase() != 'f'
    end
  break 
end


main loop do 
  enter your name etc..

  quit loop

    calculate again loop do 


quit loop do 
  puts "quit y or f"
  answer = gets.chomp

    break if answer == "y" || answer == "f"
    #if number ask again
    puts "only y or f accepted"
      end


quit loop do 
  puts "quit y or f"
  answer = gets.chomp

    return answer if answer == "y" || answer == "f"
    #if number ask again
    puts "only y or f accepted"
      end


answer = loop do 
  puts "quit y or f"
  answer = gets.chomp

   if 
    answer == "y" || answer == "f"
    break
    #if number ask again
    puts "only y or f accepted"
      end


answer = ''
loop do 
  puts "quit y or f"
  answer = gets.chomp

   if answer == "y" || answer == "f"
      break
    else
      puts "only y or f accepted"
    end
  end


# bad
puts sprintf('%10s', 'hoge')
puts '%10s' % 'hoge'

# good
puts format('%10s', 'hoge')

m = '%.2f' % [(m * 100).round / 100.0]


    '%10s' % 'hoge'

m = '%.2f' % [(m * 100).round / 100.0]




puts format('%10s', 'hoge')

     format('%2f',[(m * 100).round / 100.0])

m = '%.2f' % [(m * 100).round / 100.0]
    '%10s' % 'hoge'

# bad
puts sprintf('%10s', 'hoge')
puts '%10s' % 'hoge'
m =  '%.2f' % [(m * 100).round / 100.0]



# bad
puts format('%10s', 'hoge')
puts sprintf('%10s', 'hoge')

# good
puts '%10s' % [10.00]

puts sprintf('%10s', [10.00])



m = '%.2f' % [(m * 100).round / 100.0]
m =  format('%.2f', [(m * 100).round / 100.0])


puts format('%10s', [(m * 100).round / 100.0])






monthly payment = m

m = 124.1

monthly_payment_array = [(m * 100).round / 100.0] -> [124.1]

m = '%.2f' % [124.1]




m = format ('%.2f' % m)


m = 124.1


m = sprintf "%.2f", m.to_s
m = sprintf "%.2f", m




prompt("Welcome to Calculator! ")


name = ''
loop do
prompt("Enter your name:")
name = Kernel.gets().chomp()


  if name.empty?()
    prompt("Make sure to use a valid name with letters only.")
  elsif name.to_i.to_s != name
    prompt('Only letters are accepted')
  else
    break
  end
end





name = ''
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
end



/\d/ - A digit character ([0-9])
/\w/ - A word character ([a-zA-Z0-9_])


[4] pry(main)> name = if /[^a-eg-z]/.match('f')
[4] pry(main)*   #<MatchData "f">
[4] pry(main)*   true
[4] pry(main)* end  
=> true

 if 

name = "Jeremy1"
valid_name = if /[0-9]/.match(name)
#<MatchData "0-9">
false
end

if valid_name == false
  prompt ("Numbers are not accepted")











name = "Jeremy1"
valid_name = if /[0-9]/.match(name)
               # <MatchData "0-9">
               false
             end

puts valid_name



name = ''
loop do
prompt("Enter your name:")
name = Kernel.gets().chomp()

valid_name = if /[0-9]/.match(name)
               # <MatchData "0-9">
               false
             end

  if name.empty?()
    prompt("Make sure to use a valid name with letters only.")
  elsif valid_name == false
    prompt('Only letters are accepted')
  else
    break
  end
end

puts name 

winning combinations = 





def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizzard') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper')||
  (first == 'scissors' && second == 'lizzard')||
  (first == 'lizzard' && second == 'spock') ||
  (first == 'lizzard' && second == 'paper') ||
  (first == 'spock' && second == 'scissors') ||
  (first == 'spock' && second == 'rock')  
end

{pet: "Piper"}

  key        value
 
 winning_combinations =        
 rock = {rock: ['scissors','lizzard']}
 paper = {paper: ['rock','spock']}
scissors = {scissors: ['paper','lizzard']}
lizzard = {lizzard: ['spock','paper']}
 spock = {spock: ['scissors','rock']}

player choice = gets.chomp

if player choice = 'rock'
  look up rock

if win_with_rock.has_key?(:bike1) || 

  def you_win (combinations_array)
    if combinations_array == value.




answer = 0

if you win
  answer += 1
end

loop do

  answer += 1
  break if answers == 5
end





key     value
{rock:['paper', ]}



if person choice == {rock: ['scissors', 'lizzard']}.include


toys = {bike1: "Ducati", bike2: "Honda", bike3: "Touring Honda"}
=> {:bike1=>"Ducati", :bike2=>"Honda", :bike3=>"Touring Honda"}
   toys.keys
=> [:bike1, :bike2, :bike3]
   toys.keys.include?(:bike1)
=> true
   toys.keys.include?(:bike1 || :bike2)
=> true

winning_combinations ={        
 rock: ['scissors','lizzard'],
 paper: ['rock','spock'],
scissors: ['paper','lizzard'],
lizzard: ['spock','paper'],
spock: ['scissors','rock']
}


winning_combinations
=> {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}
   computer_answer
=> "paper"
   person_answer
=> "rock"
   winning_combinations.keys.include?(:rock)
=> true

Hashes as optional parameters in methods
I can use a hash to accept optional parameters when I am creating methods. 


define method motogp    #( parameter 1,           parameter 2         )
                        #( argument 1,       empty hash as argument 2 ) 
   def motogp            ( motorcycle,       rider_specifications = {})
  
  
  if rider_specifications.empty?
  #if the rider_specifications hash is empty:
    # print this:
    puts "This is a #{motorcycle}"

  else
  #if the rider_specifications hash DOES contain key-value pairs: 
  # print the values associated with the keys in the hash
  # passed in as an argument to parameter 2

  #                  {parameter 1}
    puts "This is a #{motorcycle} and I ride it at"
         +
  #      { parameter 2, rider_specifications hash key :track1 }
          "#{          rider_specifications[:track1]             }"
         +
          "with a top speed of "
         +
  #       { parameter 2, rider_specifications hash key :ts }
         "#{           rider_specifications[:ts]            }."
  end
end

  #     ( parameter 1)
greeting(  "Ducati"  )

  #     ( parameter 1                parameter 2               )
        (  string                      hash                    )
greeting(  "Ducati",    {track1: "Road America", ts: "135 mph"})




def motogp ( motorcycle,rider_specifications = {})
  if rider_specifications.empty?
    puts "This is my #{motorcycle}"
  else
    puts "This is my #{motorcycle}, I ride it at #{rider_specifications[:track1]}
    with a top speed of #{rider_specifications[:ts]}."
  end
end


rider1 = {track1: "blackhawk", ts: "135 mph"}
rider2 = {track1: "Road America", ts: "195 mph"}

puts
motogp("Honda", rider1)
puts
motogp("Ducati" , rider2)
puts


This is my Honda, I ride it at blackhawk
    with a top speed of 135 mph.

This is my Ducati, I ride it at Road America
    with a top speed of 195 mph.




toys = {bike1: "Ducati", bike2: "Honda", bike3: "Touring Honda"}

The .values method returns
an array
of all the values in the hash CALLING the .values method. 

toys.values
=> ["Ducati", "Honda", "Touring Honda"]




winning_combinations
=> {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}
   person_answer = 'rock'
=> "rock"
   winning_combinations.fetch(person_answer.to_sym).include?('scissors' || 'lizzard')
=> true

winning_combinations
=> {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}
   computer_answer
=> "paper"
   person_answer
=> "rock"
   winning_combinations.fetch(person_answer.to_sym).include?('scissors' || 'lizzard')
=> true
   winning_combinations.fetch(person_answer.to_sym).include?(computer_answer.to_sym)
=> false
   computer_answer = 'lizzard'
=> "lizzard"
   winning_combinations.fetch(person_answer.to_sym).include?(computer_answer.to_sym)
=> false
   winning_combinations.fetch(person_answer.to_sym).include?(computer_answer)
=> true




winning_combinations
=> {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}
   person_answer
=> "rock"
   computer_answer
=> "lizzard"
   # rock beats scissors and lizzard
   # if person answer is rock and computer answer is inside the value of the rock key value pair, lizzard 
   # person wins
   winning_combinations.fetch(person_answer.to_sym).include?(computer_answer)
=> true
   person_answer = 'scissors'
=> "scissors"
   computer_answer = 'paper'
=> "paper"
   winning_combinations.fetch(person_answer.to_sym).include?(computer_answer)
=> true
   person_answer = 'paper'
=> "paper"
   computer_answer = 'lizzard'
=> "lizzard"
   
   # computer answer beats person answer, lizzard beats paper
   # if computer answer is not in the kv value of paper then computer wins.
   if winning_combinations.fetch(person_answer.to_sym).include?(computer_answer) == false
puts "computer won!"
end
if 
   if winning_combinations.fetch(person_answer.to_sym).include?(computer_answer) == true
    puts "You won!"

def who_won(win,person_answer, computer_answer)
  if 
    win.fetch(person_answer.to_sym).include?(computer_answer)
    puts "you won!"
  else
    puts "computer_won"
  end
end

 if winning_combinations.fetch(person_answer.to_sym).include?(computer_answer) == true
     puts "You won"
   else
    puts "Computer won"
   end  

----              ------
| | | | | | | | | | | |
V v v v v v v v v v v v 
this works!!

winning_combinations
=> {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}
   person_answer
=> "paper"
   computer_answer
=> "lizzard"
   if winning_combinations.fetch(person_answer.to_sym).include?(computer_answer) == true
     puts "You won"     
   else     
     puts "Computer won"    
   end       
Computer won
=> nil


write a method that prints the outcome of the answers

def who_won(winning_combinations, answers)

if winning_combinations.fetch(answers[0].to_sym).include?(answers[1]) == true
#if winning_combinations.fetch(choice.to_sym).include?(computer_choice) == true
     puts "You won"     
   else     
     puts "Computer won"    
   end    

end

answers = %w[computer_answer,person_answer]


if choice .start_with(r)

computer_score = 0
your_score = 0



if computer won this round
  computer_score += 1
elsif you won this round
  your_score += 1
    

if computer_score == 5 
prompt 'Compter won'
break
elseif
your_score == 5 
prompt 'You won!!'
end


loop do # loop until someone has 5



  your_score = 0
  computer_score = 0

  if winning_combinations.fetch(choice.to_sym).include?(computer_choice) == true
     your_score += 1    
  else     
      computer_score += 1    
  end  

  puts
  prompt "Your score is: #{your_score}
    The computer's score is: #{computer_score}"


end

# prompt("Do you want to play again?")
  #answer = Kernel.gets().chomp()
  # break the main loop

  if your_score == 5
    prompt 'You won the game!!'
    break
  elsif computer_score == 5
    prompt 'The computer won the game!!'
    break
  end
end

      
end # the play until someone wins loop


if your_choice == computer_choice 


  if choice == computer_choice
    prompt "It's a tie, no point awarded for this round."
  elsif winning_combinations.fetch(choice.to_sym).include?(computer_choice) == true
    prompt 'You won that round!'
     your_score += 1    
  else     
    prompt 'The computer won that round'
      computer_score += 1    
  end 

  r = rock
  p = paper
  l = lizzard

def single_letter_choice(input)
  loop do 
  if input == 'r'
    return 'rock'
    break
  elsif input == 'p'
    return 'paper'
    break
  elsif input == 'l'
    return 'lizzard'
    break
    elsif input == 's'
      prompt "S" for spock, 's' for 'scissors'

    

def score_keeper (player1, player2)





winning_combinations =
   {'rock'=>["scissors", "lizzard"],
   'paper'=>["rock", "spock"],
   'scissors'=>["paper", "lizzard"],
   'lizzard'=>["spock", "paper"],
   'spock'=>["scissors", "rock"]}

if choice == computer_choice
    puts "It's a tie, no point awarded for this round."
  elsif winning_combinations.fetch(choice).include?(computer_choice) == true
    puts 'You won that round!'
    your_score += 1
  else
    puts 'The computer won that round!'
    computer_score += 1
  end




