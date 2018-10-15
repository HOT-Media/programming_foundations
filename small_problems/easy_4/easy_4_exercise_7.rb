STRING_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string_input)
  integer_array = string_input.chars.map { |idx| STRING_INTEGER[idx] }
  integer_output = 0
  integer_array.map { |idx| integer_output = 10 * integer_output + idx }
  integer_output
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
