Write a method that takes a string argument and returns a new string
that contains the value of the original string with all consecutive 
duplicate characters collapsed into a single character. 
You may not use String squeeze or String squeeze!.

Examples:
```ruby
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
```

```ruby

crunch.split.first then after that .uniq then join (' ')

string not words remove the consectuitve doubles nomatter what the string ends up being


split the whole string

interate through each character
put the first char in an array
compare the current character to array.last 
  if its the same nothing
    if its different << to array




duplchar = 'ddaaiillyy ddoouubbllee'

def crunch(str)
  collection_array = []
  str.split(//).map do |idx|
  collection_array << idx if idx != collection_array.last
  end  
  collection_array.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''



def crunch(str)
  collect = []
  str.split(//).map { |idx| collect << idx if idx != collect.last }
  collect.join
end


















```