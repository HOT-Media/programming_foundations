Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:
```ruby

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


word number hash


words_to_numbers

"zero one two three four five six seven eight nine"



NUMBER_WORDS = [
         "zero", "one", "two", "three","four",
         "five", "six", "seven", "eight", "nine"
        ]



case




str = 'Please call me at five five five one two three four. Thanks.'
str_arr.split(' ')
=> ["Please",
 "call",
 "me",
 "at",
 "five",
 "five",
 "five",
 "one",
 "two",
 "three",
 "four.",
 "Thanks."]


create a hash of words relative to the number

split the string into words
iterate through the words and compare them to the words hash.include?

if the word in the str_arr matches one of the numbers in the words array

str_arr.map do |word|
  word = (number_words.index(word)).to_s if number_words.include?(word)
end


=> [nil, nil, nil, nil, "5", "5", "5", "1", "2", "3", nil, nil]


** ** **

str_arr.map do |word|
  if number_words.include?(word)
    word = (number_words.index(word)).to_s
  else
    word
  end
end


=> [nil, nil, nil, nil, "5", "5", "5", "1", "2", "3", nil, nil]







NUMBER_WORDS = [
         "zero", "one", "two", "three","four",
         "five", "six", "seven", "eight", "nine"
        ]


def word_to_digit(str)
  str_arr = str.split(' ')
  str_arr.map do |word|
    if NUMBER_WORDS.include?(word)
      word = (NUMBER_WORDS.index(word)).to_s
    else
      word
    end
  end
  str_arr.join(' ')
end


word_to_digit('Please call me at five five five one two three four. Thanks.')



*************************************************JMX


NUMBER_WORDS = ["zero", "one", "two", "three","four",
                "five", "six", "seven", "eight", "nine"]

def word_to_digit(str)
  str_arr = str.split(' ')
  str_arr.map! do |word|
    if NUMBER_WORDS.include?(word)
      word = (NUMBER_WORDS.index(word)).to_s
    else
      word
    end
  end
  str_arr.join(' ')
end

word_to_digit('Please call me at five five five one two three four. Thanks.')






























five: 5, 

case word
  when five: then 5