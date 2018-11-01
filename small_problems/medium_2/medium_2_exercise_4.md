Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:
```ruby
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
Note that balanced pairs must each start with a (, not a ).


count the parantheses
paranehtese.count regex odd false even true

strarr.count { |char| char =~ /[\)]/ }




'What is) this?'

def balanced?(str)
return true if !(str.chars.count{|idx| idx == ')' || idx == '('} ).odd?
false
end


balanced?('What (is) this?') == true
=> true
balanced?('What is) this?') == false
=> true
balanced?('What (is this?') == false
=> true
balanced?('((What) (is this))?') == true
=> true
balanced?('((What)) (is this))?') == false
=> true
balanced?('Hey!') == true
=> true
balanced?(')Hey!(') == false
=> false
balanced?('What ((is))) up(') == false
=> false
Note that balanced pairs must each start with a (, not a ).


the pattern has to be ()
or ()
start with ( 
and end with )

split the string into characters
every time there is a ( 
set = open

every time there is a ) 
set is closed



'What is) this?'

strarr = str.chars
=> ["W", "h", "a", "t", " ", "i", "s", ")", " ", "t", "h", "i", "s", "?"]

is character one == ')'

set = false

remove all alpha numeric characters and spaces

remove everyhing except()


"strin))))g".gsub(/\(.*\)/, "")
=> "string"


')' = closing

'(' = opening

iterate throug the array of characters

if the first para is closing then invalid
if the last para is opening then invalid

put all the paras in an array




pattern






remove all the 



"strin))))g".gsub(/\)/, "")

append evrery para into an enpy string

str = '()()((())()('
=> "()()((())()("
str.chars.sort
=> ["(", "(", "(", "(", "(", "(", "(", ")", ")", ")", ")", ")"]
str.chars.sort.length
=> 12
str.chars.count('(')


str.chars.first == ")"
  false

str.chars.last == "("
  false

str.chars.length.odd? # is the array length odd? no, false
  false


str.chars.sort 

str.chars.slice![0..(str.length/2)-1]


str.chars.slice!(0..(str.length/2)-1)
=> ["(", ")", "(", ")", "(", "("]

str = '()()((())()('



check_balance = ''
str.chars.each do |char|
  check_balance << char if char == "(" || char == ")"
end



'What (is) this?'

'What is) this?'

'What (is this?'

'((What) (is this))?'

'((What)) (is this))?'

'Hey!'

')Hey!('

'What ((is))) up('



balanced?('What (is) this?') == true
=> true
balanced?('What is) this?') == false
=> true
balanced?('What (is this?') == false
=> true
balanced?('((What) (is this))?') == true
=> true
balanced?('((What)) (is this))?') == false
=> true
balanced?('Hey!') == true
=> true
balanced?(')Hey!(') == false
=> false
balanced?('What ((is))) up(') == false
=> false
Note that balanced pairs must each start with a (, not a ).




str = 'What (is) this?'
=> "What (is) this?"

check_balance = ''
str.chars.each do |char|
  check_balance << char if char == "(" || char == ")"
end

str.chars.sort.length
=> 12
if check_balance.chars.first == ")"
  return false
elsif check_balance.chars.last == "("
  return false

check_balance.chars.length.odd? # is the array length odd? no, false
  false


str
str = "What (is) this?"
check_balance = ''
=> ""
str.chars.each do |char|
  check_balance << char if char == "(" || char == ")"  
end  
=> ["W", "h", "a", "t", " ", "(", "i", "s", ")", " ", "t", "h", "i", "s", "?"]
check_balance
=> "()"



if check_balance.chars.first == ")"
  return false
elsif check_balance.chars.last == "("
  return false

check_balance.chars.length.odd? # is the array length odd? no, false
  false



str.chars.sort.length
=> 12

def balanced 
return false if (
                 check_balance.chars.first == ")" || 
                 check_balance.chars.last == "(" || 
                 )

check_balance.count("(") == check_balance.count(")")



def bal_str(str)
str = "What (is) this?"
check_balance = ''

str.chars.each do |char|
  check_balance << char if char == "(" || char == ")"  
end  

check_balance
=> "()"
end


def balanced(str)

para_string = bal_str(str)
return false if (
                 check_balance.chars.first == ")" || 
                 check_balance.chars.last == "("
                 )

check_balance.count("(") == check_balance.count(")")






****


str = "What (is) this?"
=> "What (is) this?"

check_balance = ''
=> ""

str.chars.each do |char|
  check_balance << char if char == "(" || char == ")"    
end    
=> ["W", "h", "a", "t", " ", "(", "i", "s", ")", " ", "t", "h", "i", "s", "?"]

check_balance
=> "()"

false if (
  check_balance.chars.first == ")" ||                  
  check_balance.chars.last == "("                 
)                   
=> nil
check_balance.count("(") == check_balance.count(")")
=> true

def para_syntax_validation(str) #check_balance)
return false if (
                str.chars.first == ")" ||
                str.chars.last == "("
                )
  str.count("(") == str.count(")")
end


def para_syntax_validation(str) #check_balance)
  return false if str[0] == ")" || str[-1] == "("
  str.count("(") == str.count(")")
end















str = "What (is) this?"

paren_str = ''

str.chars.each do |char|
  paren_str << char if char == "(" || char == ")"    
end 

=> ["W", "h", "a", "t", " ", "(", "i", "s", ")", " ", "t", "h", "i", "s", "?"]

check_balance
=> "()"




def paren_syntax_validation(str) #check_balance)
  return false if str[0] == ")" || str[-1] == "("
  str.count("(") == str.count(")")
end





def balanced(str)

str = "What (is) this?"

paren_str = ''

  str.chars.each do |char|
    paren_str << char if char == "(" || char == ")"    
  end 
   
=> ["W", "h", "a", "t", " ", "(", "i", "s", ")", " ", "t", "h", "i", "s", "?"]

check_balance
=> "()"
 paren_syntax_validation(paren_str)
end




def paren_syntax_validation(str) #check_balance)
  return false if str[0] == ")" || str[-1] == "("
  str.count("(") == str.count(")")
end


balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false




def balanced?(str)

  # str = "What (is) this?"

  paren_str = ''
  str.chars.each do |char|
    paren_str << char if char == "(" || char == ")"    
  end 
   
  #=> ["W", "h", "a", "t", " ", "(", "i", "s", ")", " ", "t", "h", "i", "s", "?"]

  # paren_str
  # => "()"
 paren_syntax_validation(paren_str)
end




def paren_syntax_validation(str) #check_balance
  return false if str[0] == ")" || str[-1] == "("
  str.count("(") == str.count(")")
end


balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false




*************************************************JMX

def balanced?(str)
  paren_str = ''
  str.chars.each do |char|
    paren_str << char if char == "(" || char == ")"
  end
 paren_syntax_validation(paren_str)
end

def paren_syntax_validation(str)
  return false if str[0] == ")" || str[-1] == "("
  str.count("(") == str.count(")")
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false


*************************************************LS 


def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end



