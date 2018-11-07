There are 16 Hexadecimal digits. They are the same as the decimal digits up to 9, but then there are the letters A, B, C, D, E and F in place of the decimal numbers 10 to 15:

Hexadecimal:  0 1 2 3 4 5 6 7 8 9 a b c d e f

A UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections 
of characters, each section will like this 8-4-4-4-12 and is represented as a string.

It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

    8      4     4    4     12
"f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.
An understanding of the Hexadecimal digits is implied







https://launchschool.com/lessons/c53f2250/assignments/f524e910

The key to this solution is having the section_length array containing integers representing the number of characters in each section of the UUID. 

During each iteration through the section_length Array, within the block, we can call the times method on the integer for that iteration, and thus build up the UUID character by character.


```ruby
*************************************************LS 
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  section_length = [8, 4, 4, 4, 12]
  section_length.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= section_length.size - 1
  end

  uuid
end


