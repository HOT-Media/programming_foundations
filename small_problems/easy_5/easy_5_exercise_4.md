Given a string of words separated by spaces, 
write a method that takes this string of words and returns a 
string in which the first and last letters of every word is swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces

Examples:

```ruby
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'












str = 'Oh what a wonderful day it is'

separate each word into a collection

str_arr = str.split
=> ["Oh", "what", "a", "wonderful", "day", "it", "is"]



str_arr
=> ["Oh", "what", "a", "wonderful", "day", "it", "is"]

separate the characters of each word in str_arr and save each character into temp_collection


temp_collection = []
=> []


str_arr[0].split(//).each do |idx|
  temp_collection << idx  
  str_arr[0][0]= temp_collection.last #=> "h"
str_arr[0][-1]= temp_collection.first #=> "O"
end 





iterate through the str_arr array
  iteration 1:

  split the string in index 0 , "Oh"
  << each element of the array to temp_collection
  exit the 



def swap (str)

str_arr = str.split

str_arr.each do |word| 
# r, first element, "hO"
  temp_collection = []


  word.split(//).each do |character| # splitting element at idx 0, 'Oh' []
    temp_collection << character
  end
  
  word[0] = temp_collection.last
  word[-1] = temp_collection.first

  temp_collection.clear

end

str_arr.join(" ")
end



def swap (str)
  str_arr = str.split

  str_arr.each do |word|
    temp_collection = []

    word.split(//).each do |character|
      temp_collection << character
    end

    word[0] = temp_collection.last
    word[-1] = temp_collection.first
  end

  str_arr.join(" ")
end





***************

def swap(str)
  str_arr = str.split.each do |word|
    temp_collection = []

    word.split(//).each do |character|
      temp_collection << character
    end

    word[0] = temp_collection.last
    word[-1] = temp_collection.first
  end

  str_arr.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'



*************


















str_arr[0].split(//).each do |character|
  temp_collection << character
end  
=> ["O", "h"]
temp_collection
=> ["O", "h"]





    str_arr[r][0]=temp_collection.last
    str_arr[r][-1]=temp_collection.first
    str_arr[r].join
    temp_collection.clear
  end





"hO"
"what"
"a"
"wonderful"
"day"
"it"
"is"
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]





















=> ["O", "h"]





new_collection.clear

replace the original collection first element with the last element of the new collection
replace the original collection last element with the first element of the new collection


str_arr[0][0]= temp_collection.last
=> "h"
str_arr[0][-1]= temp_collection.first
=> "O"
str_arr
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]

temp_collection.clear












str_arr[0].split(//).each do |idx|
  new_collection << idx  
end  
=> ["O", "h"]



str_arr[0][0]=new_collection.last
=> "h"
str_arr[0][-1]=new_collection.first
=> "O"
str_arr
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]





swapped_letters = ''
=> ""
str_arr.each do |idx|
  swapped_letters << idx
end  
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
swapped_letters
=> "hOwhatawonderfuldayitis"
swapped_letters.clear
=> ""
str_arr.each do |idx|
  swapped_letters << idx + ' '
end  
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
swapped_letters
=> "hO what a wonderful day it is "


























str_arr.each do |idx|
  swapped_letters << idx + ' '
end  
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
swapped_letters
=> "hO what a wonderful day it is "





str_arr
=> ["Oh", "what", "a", "wonderful", "day", "it", "is"]
str_arr[0].split.each do |idx|
  
  new_collection = []
  new_collection << idx
end  
=> ["Oh"]
new_collection
NameError: undefined local variable or method `new_collection' for main:Object
from (pry):2056:in `__pry__'
new_collection = []
=> []
str_arr[0].split.each do |idx|
  new_collection << idx  
end  
=> ["Oh"]
new_collection
=> ["Oh"]
str_arr[0].split
=> ["Oh"]
str_arr[0].split(//)
=> ["O", "h"]
str_arr[0].split(//).each do |idx|
  new_collection << idx  
end  
=> ["O", "h"]
new_collection
=> ["Oh", "O", "h"]
new_collection.clear
=> []
new_collection
=> []
str_arr[0].split(//).each do |idx|
  new_collection << idx  
end  
=> ["O", "h"]
new_collection
=> ["O", "h"]
str_arr
=> ["Oh", "what", "a", "wonderful", "day", "it", "is"]
first_word = new_collection
=> ["O", "h"]
first_word
=> ["O", "h"]
first_word.join
=> "Oh"
first_word
=> ["O", "h"]
first_word[0]=new_collection.last
=> "h"
first_word[-1]=new_collection.first
=> "h"
first_word
=> ["h", "h"]
new_collection
=> ["h", "h"]
new_collection.clear
=> []
str_arr[0].split(//).each do |idx|
  new_collection << idx  
end  
=> ["O", "h"]
str_arr[0][0]
=> "O"
str_arr[0][0]=new_collection.last
=> "h"
str_arr[0][-1]=new_collection.first
=> "O"
str_arr
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
str_arr.join
=> "hOwhatawonderfuldayitis"
str_arr
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
str_arr.flatten
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
swapped_letters = ''
=> ""
str_arr.each do |idx|
  swapped_letters << idx
end  
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
swapped_letters
=> "hOwhatawonderfuldayitis"
swapped_letters.clear
=> ""
str_arr.each do |idx|
  swapped_letters << idx + ' '
end  
=> ["hO", "what", "a", "wonderful", "day", "it", "is"]
swapped_letters
=> "hO what a wonderful day it is "







































