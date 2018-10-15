Write a method that determines and returns the ASCII string value 
of a string that is passed in as an argument.

The ASCII string value is the sum of the ASCII values of every 
character in the string. 

(You may use String ord to determine the ASCII value of a character.)
```ruby
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0+
```


get ascii values of each character by iterating through the string

put the values in an array

add the values

```ruby
def ascii_value(string)
  ascii_sum = string.split('').map do |character| 
    character = character.ord
  end
  ascii_sum.sum
  end



ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0








def ascii_value(string)
  string.split('').map(&:ord).sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0



def ascii_value(string)
  ascii_sum = 0
  string.each_char{ |character| ascii_sum += character.ord }
  ascii_sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


































