Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:
```ruby

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

0
0 and 1
0 and 1 and 2

str.split.each_with_index |element, index|
  all_substrings_array << element 


0
0+1
0+2
0
0..1
0..2


