puts "Please write word or multiple words:"
word = gets.chomp

number_of_characters =
  word.split(//).delete_if { |element| element == (" ") }.count

number_of_characters_string_delete = word.delete(" ").length

puts "There are #{number_of_characters} characters in \"#{word}\"."

puts "There are #{number_of_characters_string_delete}
characters in \"#{word}\"."
