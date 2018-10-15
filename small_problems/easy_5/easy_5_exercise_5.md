Given a string that consists of some words and an assortment of non-alphabetic characters,

write a method that returns that string with all of the non-alphabetic characters 
replaced by spaces. 

If one or more non-alphabetic characters occur in a row, you should only have one space in the result 

(the result should never have consecutive spaces).

Examples:

```ruby

cleanup("---what's my +*& line?") == ' what s my line '

str.map //regex A..Z a..z // |char|
when char != regex
  char = " "

identify all non-alphabetic characters gsub


replace non-alphabetic characters with a space characters gsub


if 2 or more non-alphabetic characters are in a row there should be only 1 space
    iterate through the characters in the string from str[0..-1]
    if a non-alphabetic character is identified, gsub iterate
      if the next character is a non-alphabetic character .delete it



is this character a non non-alphabetic
  yes rplace with space
  no nothing
is the next char a non-alphabetic
  yes delete 





 regex gsub everything except for letters
str.gsub(/[^a-zA-Z ]/, "")
 str.gsub(/[a-zA-Z ]/, "") 
=> "whats my  line"

cleanup("---what's my +*& line?") == ' what s my line '


"---what's my +*& line?"


sring with 3 ---  

replace with spaces

str.gsub(/[^a-zA-Z ]/, " ").squeeze(" ")
=> "   what s my     line "

remove 






replace non-alphabetic with numbers


"  now   is  the".squeeze("/[^a-zA-Z ]/ ")


def cleanup(str)
  str.gsub(/[^a-zA-Z ]/, " ").squeeze(" ")
end




















```