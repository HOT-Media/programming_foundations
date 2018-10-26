Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples:
```ruby

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

str.regex ~= /[a-zA-Z]/ if letter and capitalized true

str = 


if string =~ /[a-z]/
  puts "string contains lowercase characters"
end

if string =~ /[A-Z]/
  puts "string contains uppercase characters"
end


if the string is all caps
if the string is empty
if the string is all caps and has spaces








** ** ** *

def uppercase?(str)
 return true  if str =~ /[A-Z]/ || str.empty?
 false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true




uppercase?('Four Score')
=> true

space is causing the return true



def uppercase?(str)
 return true  if str =~ /[A-Z]/           || str.empty?
             str =~ / regex all uppercase not just capitalized and ignore spaces/
 


false
end

if the string is all caps and has a space return true



"DO G" =~ /[A-Z]^$/

** ** ** ** 


def uppercase?(str)
 return true  if str =~ /[A-Z]/ || str.empty?
 false
end

p uppercase?('t') == false
true
=> true
p uppercase?('T') == true
true
=> true
p uppercase?('Four Score') == false    true with capitalized 
false
=> false
p uppercase?('FOUR SCORE') == true
true
=> true
p uppercase?('4SCORE!') == true
true
=> true
p uppercase?('') == true
true
=> true



def all_uppercase?(str)
 return true  if str =~ /[A-Z]/ || str.empty?
 false
end

p all_uppercase?('t') == false
true
=> true
p all_uppercase?('T') == true
true
=> true
p all_uppercase?('Four Score') == false    true with capitalized 
false
=> false
p all_uppercase?('FOUR SCORE') == true
true
=> true
p all_uppercase?('4SCORE!') == true
true
=> true
p all_uppercase?('') == true
true
=> true



def all_uppercase?(str)
 return true  if str =~ /[A-Z]/ || str.empty?
 false
end



check each character 
is it uppercase or a space















142 wasted lines because I did not think

str = "Think"

str == str.upcase  
=> false 



# Write a method that takes a string argument, and returns
# true if all of the alphabetic characters inside the string are uppercase
# false otherwise 

# Characters that are not alphabetic should be ignored.

def uppercase?(str)
  str == str.upcase
end



















