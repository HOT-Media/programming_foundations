Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:
```ruby

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''


.map idx * 2 )

str.chars.map{ |idx| idx + idx}.join


*************************************************JMX
def repeater(str)
  str.chars.map{ |idx| idx + idx}.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''



*************************************************LS

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

