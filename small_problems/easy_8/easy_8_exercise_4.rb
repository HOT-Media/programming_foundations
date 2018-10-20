def substrings(str)
  substrings = []
  loop do
    str.length.times { |idx| substrings << str[0..idx] }
    str.slice!(0)
    break if str.empty?
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
