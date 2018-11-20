require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

board = {1=>"X", 2=>"X", 3=>"O", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

two_x = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count("X") == 2
 end  

puts two_x

block_this_square = two_x.select do |subarr|
  board.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
end

binding.pry
block_this_square
# => [[7, 8, 9], [2, 5, 8]]