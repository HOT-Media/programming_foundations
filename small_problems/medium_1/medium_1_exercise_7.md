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


***


NUMBER_WORDS = ["zero", "one", "two", "three","four",
                "five", "six", "seven", "eight", "nine"]

def word_to_digit(str)
  str_arr = str.split(' ')
  str_arr.map! do |word|
    word.delete!("^a-zA-Z")
    if NUMBER_WORDS.include?(word)
      word = (NUMBER_WORDS.index(word)).to_s
    else
      word
    end
  end
  str_arr.join(' ')
end

word_to_digit('Please call me at five five five one two three four. Thanks.')




gsub 



NUMBER_WORDS = ["zero", "one", "two", "three","four",
                "five", "six", "seven", "eight", "nine"]

def word_to_digit(str)
  str_arr = str.split(' ')
  str_arr.map! do |word|
    if NUMBER_WORDS.include?(word.delete("^a-zA-Z"))
      word = (NUMBER_WORDS.index(word)).to_s
    else
      word
    end
  end
  str_arr.join(' ')
end

word_to_digit('Please call me at five five five one two three four. Thanks.')






gsub the string 'five' for index location integer 5 to string

'five.'.gsub(index)


if the string .ends with


"hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"


word == the integer index to string gsubbed in 

word = (NUMBER_WORDS.index(word.delete("^a-zA-Z"))).to_s

(NUMBER_WORDS.index(word.delete("^a-zA-Z"))).to_s
=> "4"
word.gsub(/[aeiou]/)







word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.


def word_to_digit 


integer_number_strings = {'0' => 'zero', '1' => 'one', '2' => 'two', 3  ,  4}






intg
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
str_arr


DIGIT_CONV = {'0' => "zero",'1' => "one", '2' => "two", '3' => "three", '4' => "four", '5'=> "five", '6' => "six",'7' => "seven", '8' => "eight",'9' => "nine"}

word_to_digit('Please call me at five five five one two three four. Thanks.') 


def word_to_digit(conv_words_to_digits)
  DIGIT_CONV.values.each do |word|
    conv_words_to_digits.gsub!(/\b#{word}\b/ ,DIGIT_CONV.key(word))
  end
  conv_words_to_digits
end















def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end















*************************************************LS 

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end
```
We use the gsub! method to replace all instances of each number word. Here, we use a regex to look for a word in the string passed in and replace it with the corresponding digit. The word to look for is interpolated into the regex, /\b#{word}\b/. We use \b to limit the operation to complete words, not substrings. For instance, if the phrase/sentence passed into the method has the word "freight" in it, we won't replace it. If we don't use \b, we would convert "freight" to "fr8".



