NUMBER_WORDS_ARRAY = ["zero",
                      "one",
                      "two",
                      "three",
                      "four",
                      "five",
                      "six",
                      "seven",
                      "eight",
                      "nine",
                      "ten",
                      "eleven",
                      "twelve",
                      "thirteen",
                      "fourteen",
                      "fifteen",
                      "sixteen",
                      "seventeen",
                      "eighteen",
                      "nineteen"]

def alphabetic_number_sort(input_integer_array)
  int_word_kv = {}

  input_integer_array.map do |int|
    int_word_kv[int] = NUMBER_WORDS_ARRAY[int]
  end

  sorted_words = int_word_kv.map { |idx| idx.reverse}.sort
  sorted_words.map { |idx| idx[1] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
