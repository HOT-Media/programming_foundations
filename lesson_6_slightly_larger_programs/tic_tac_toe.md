Tic tac toe is a 2 person game

The game board is a 3 X 3 matrix with 9 available locations

The locations one player has claimed is represented by an X 
The locations the other player has claimed are represented by an O 

The game begins with one player choosing to represent their location with X or O
If player one chooses X, then by default player 2 will be O respectively

Player one draws an X in one of the 9 locations of the 3X 3 matrix

Player two places an O in one of the remaining 8 locations

Player one places an X in one of the remaining 7 locations

Player two places an O in one of the remaining 6 locations

Player one places an X in one of the remaining 5 locations
  if the 3 X's are in one line, vertical, horizintal or diagonal
    player one wins
   if the X's are not in a line
    its player two's turn

Player two places an O in one of the remaining 4 locations
  if the 3 O's are in one line, vertical, horizintal or diagonal
    player two wins

This continues until the last location has either an X or an O

If the game board is full and there is not a line of X's or O's then its a draw
and no one wins

In one sentence:
get paper,pen and draw the grid, mark a sqare, oponnent marks a square, if there's a winner, game over, if the 
board is full, game over - tie, if neither of those has occurred yet, repeat this until one of them occurrs. 
```ruby

1. Display the initial empty 3x3 board. *
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!






def prompt(msg)
  puts "=>#{msg}"
end



def display_board(brd)

  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts "" 

end


def initialize_board
  new_board = {}
  (1..9).each{|num| new_board[num] = ' '}
  new_board
end


def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square(1..9):"
    square = gets.chomp.to_i

    if brd.keys.select{|num| brd[num] == ' '}.include?(square)
      break
    }
    else
      prompt "Sorry that is not a valid choice"
    end

  end

  brd[square] = "X"
end 

board = initialize_board
display_board(board)

player_places_piece(board)
puts board.inspect
display_board(board)





board_hsh = initialize_board
=> {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
board_hsh.keys
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]








                    # modify the value of the hash
                    # mutate inside the method
                    # visible outside the method 
player_places_piece(  board  )







def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square(#{empty_squares(brd).join(',')}1..9):"
    square = gets.chomp.to_i

    if empty_squares(brd).include?(square)
      break
    else 
      prompt "Sorry that is not a valid choice"
    end

  end
  brd[square] = "X"
end 

# Inspect the board and does not modify the board
def empty_squares(brd)
  brd.keys.select{|num| brd[num] == ' '}
end






def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"

  end
  brd[square] = "X"
end 




INITIAL_MARKER = ' '
PLAYER_MARKER = ' '
COMPUTER_MARKER = 'O'







Player places piece 
*************************************************JMX


require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts "" 
end

def initialize_board
  new_board = {}
  (1..9).each{|num| new_board[num] = "#{INITIAL_MARKER}"}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == "#{INITIAL_MARKER}"}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = "#{PLAYER_MARKER}"
end 

board = initialize_board
display_board(board)

player_places_piece!(board)
puts board.inspect
display_board(board)

puts board.inspect



*************************************************JMX



*********computer_places_piece

require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts "" 
end

def initialize_board
  new_board = {}
  (1..9).each{|num| new_board[num] = "#{INITIAL_MARKER}"}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == "#{INITIAL_MARKER}"}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = "#{PLAYER_MARKER}"
end 

def computer_places_piece(brd)
  square = empty_squares(brd).sample # return an array of integers that are available
  brd[square] = COMPUTER_MARKER
end

board = initialize_board
display_board(board)

player_places_piece!(board)
computer_places_piece(board)
puts board.inspect
display_board(board)





*************************************************







require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts "" 
end

def initialize_board
  new_board = {}
  (1..9).each{|num| new_board[num] = "#{INITIAL_MARKER}"}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == "#{INITIAL_MARKER}"}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = "#{PLAYER_MARKER}"
end 

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end













def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  true
end










board = initialize_board
display_board(board)

loop do

player_places_piece!(board)
computer_places_piece!(board)
display_board(board)

break if someone_won?(board) || board_full?(board)







*************************************************JMX




require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts "" 
end

def initialize_board
  new_board = {}
  (1..9).each{|num| new_board[num] = "#{INITIAL_MARKER}"}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == "#{INITIAL_MARKER}"}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = "#{PLAYER_MARKER}"
end 

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9] + # rows
                  [[1,4,7], [2,5,8], [3,6,9] + # columns
                  [[1,5,9], [7,5,3]]           # diagonal

  winning_lines.each do |line| 
    binding.pry
  
end




board = initialize_board
display_board(board)

loop do
  player_places_piece!(board)
  computer_places_piece!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

if someone_won(board)
  prompt "#{detect_winner(board)} won!"
else
  prompt "It's a tie!"
end




def detect_winner(brd)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9]] + # +  rows
                  [[1,4,7], [2,5,8], [3,6,9]] + # + columns
                  [[1,5,9], [7,5,3]]           # diagonal

  winning_lines.each do |line| 

  if brd[line[0]] == PLAYER_MARKER && 
     brd[line[1]] == PLAYER_MARKER &&
     brd[line[2]] == PLAYER_MARKER &&
     return "Player"
   elsif  if brd[line[0]] == COMPUTER_MARKER && 
     brd[line[1]] == COMPUTER_MARKER &&
     brd[line[2]] == COMPUTER_MARKER &&
     return "Computer"
   else
    nil
  end


end




loop do 

  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

 puts "Play again?"
 answer = gets.chomp
 break if answer == "no"
end














*************************************************Before rubocop


require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}, the computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  # false
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [7, 5, 3]]

  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return "Player"
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return "Computer"
    end
  end
  nil
end

loop do
  board = initialize_board
  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end
  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end














*************************************************rubocop refactor detect_winner




require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'


#remove this from detect winner
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}, the computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  # false
  !!detect_winner(brd)
end

# def detect_winner(brd)
#   winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
#                   [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
#                   [[1, 5, 9], [7, 5, 3]]

#   winning_lines.each do |line|
#     if brd[line[0]] == PLAYER_MARKER &&
#        brd[line[1]] == PLAYER_MARKER &&
#        brd[line[2]] == PLAYER_MARKER
#       return "Player"
#     elsif brd[line[0]] == COMPUTER_MARKER &&
#           brd[line[1]] == COMPUTER_MARKER &&
#           brd[line[2]] == COMPUTER_MARKER
#       return "Computer"
#     end
#   end
#   nil
# end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

loop do
  board = initialize_board
  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end
  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end
















