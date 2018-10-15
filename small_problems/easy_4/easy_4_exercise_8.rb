STR_INT_KV_PAIRS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string_input)
  integer_array = string_input.chars.map { |idx| STR_INT_KV_PAIRS[idx] }
  integer_output_from_string_input = 0

  integer_array.map do |idx|
    integer_output_from_string_input = 10 * integer_output_from_string_input + idx
  end

  integer_output_from_string_input
end

string_to_integer '4321'

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
