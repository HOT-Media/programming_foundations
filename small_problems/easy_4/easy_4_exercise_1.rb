=begin
Write a method that takes two strings as arguments,
determines the longest of the two strings,
and then
returns the result of
concatenating the shorter string, the longer string,
and the shorter string once again.
You may assume that the strings are of different lengths.

Understand the problem:

input:
2 string arguments
both strings are different lengths

output:
concatenated string of the "shorterstringlongerstringshorterstring"

Edge cases:
spaces
punctuation
multi line strings

Test cases:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Model the problem:
given 2 strings, count the characters,
determine which string is the shortest.
Define a variable for the concatonated string
Add the short string to the long string
then add the short string to the end
of the long string and reference it with
the contcatonated string variable
=end

def short_long_short(str1, str2)
  if str1.length < str2.length
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
