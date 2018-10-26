Write a method that returns a list of all substrings of a string that are palindromic. 

That is, each substring must consist of the same sequence of characters forwards as it does backwards. 

The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Examples:
```ruby

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]




'madam'









break apart the string 

find the largest paladrome
join it and put it in an array
take that palindrome and substring it again then again until only the middle two characters are left

then move to the next word


split the words into their own array then split the words into characters

then do the paladrome append sub string




how many words

split the string on spaces .split (' ')

each word wil be in its own array

split that word into characters


two characters:
find two consecutive characters and their index
add one index to each side then again until the characters no longer match

'cas settes'



str[3..8]




brute force is 

take every character and see if it is iether a consecutieve character or if the character beforeit and after it are the same





str = OxyxA

is x[0] == x[1] or == x[2]

if x[0] is == x[1] double palindrome

if x[0] is == x[2] triple palindrome


once a palindrome is identified then put it in its own string

palstr = ''

palstr = 'identified palindrome'

chedck the chars on each side
if they match then update the palstr with the new value

once the palindrome is identified in length then substring paslstr




identify how long it is

************************************ My substrings def from 8-4










def substrings(str)
  substrings = []
  loop do 
    str.length.times { |idx| substrings << str[0..idx] }
    str.slice!(0)
    break if str.empty?
  end
  substrings
end


*************************************************LS 


def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end















