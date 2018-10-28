DIGIT_CONV = { '0' => "zero", '1' => "one", '2' => "two", '3' => "three",
               '4' => "four", '5' => "five", '6' => "six", '7' => "seven",
               '8' => "eight", '9' => "nine" }

def word_to_digit(conv_words_to_digits)
  DIGIT_CONV.values.each do |word|
    conv_words_to_digits.gsub!(/\b#{word}\b/, DIGIT_CONV.key(word))
  end
  conv_words_to_digits
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
