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






































