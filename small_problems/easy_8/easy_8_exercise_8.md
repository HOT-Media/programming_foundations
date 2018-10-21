Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
```ruby

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

str.chars.map{ |idx| idx + idx}.join
idx /aeiou digits punct whitespace regex
  idx
else
  idx + idx

str.chars.map{ |idx| idx + idx unless idx == 'a'}.join

=> "mmyy  hhaappppyy  ppoooocchh"


str.chars.map{ |idx| idx + idx unless idx == 'a'}.join
=> "mmyy  hhppppyy  ppoooocchh"



doubled_cons_arr = str.chars.map do |idx| 
  if idx == 'a'
    idx
  else
    idx + idx 
  end
end

doubled_cons_arr.join






*****


doubled_cons_arr = str.chars.map do |idx| 
  if idx == 'a'  
    idx    
  else    
    idx + idx     
  end    
end  
=> ["mm",
 "yy",
 "  ",
 "hh",
 "a",
 "pp",
 "pp",
 "yy",
 "  ",
 "pp",
 "oo",
 "oo",
 "cc",
 "hh"]

doubled_cons_arr.join
=> "mmyy  hhappppyy  ppoooocchh"


\S

def contains_vowel(str)
  str =~ /[aeiou]/
end
contains_vowel("tes t") # returns 1
contains_vowel("sky")  # returns nil

char =~ /\s/ 
=> 0





char =~ /[a-z]/ : This checks if the character is a lowercase letter between a and z. char =~ /[A-Z]/ : This checks if the character is an uppercase letter between A and Z. char =~ /[^A-Za-z]/ : This checks if the character is neither an uppercase letter nor a lowercase letter.





char =~ /[a-z]/
char =~ /[A-Z]/
char =~ /[^A-Za-z]/





char =~ /[A-Za-z]/  letters only 




double it if its a letter unless its a vowel
str + str



if str =~ /[aeiou]/ || str =~ /^[A-Za-z]/
  str
else



if  =~ /[A-Za-z]/ 
str + str




doubled_cons_arr = str.chars.map do |idx|

  if idx  =~ /[^A-Za-z]/
    idx
  elsif idx =~ /[aeiou]/ 
    idx
  else
    idx + idx 
  end
end

doubled_cons_arr.join


=> ["M", "y", "  ", "P", "o", "o", "c", "h", "  ", "11"]
doubled_cons_arr.join
=> "My  Pooch  11"



3 if not_letter =~ /[^A-Za-z]/
=> 3



double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""



*************************************************JMX
def double_consonants(str)
  doubled_cons_arr = str.chars.map do |idx|

    if idx  =~ /[^A-Za-z]/
      idx
    elsif idx =~ /[aeiou]/ 
      idx
    else
      idx + idx 
    end
  end
  doubled_cons_arr.join
end

p double_consonants('String') == "SSttrrinngg"

p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"

p double_consonants("July 4th") == "JJullyy 4tthh"

p double_consonants('') == ""

*************************************************LS 

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end


string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end





















