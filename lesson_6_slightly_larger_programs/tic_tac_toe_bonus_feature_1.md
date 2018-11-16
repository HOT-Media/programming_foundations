1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!





Refactor - bonus 1
Improved "join"

If we run the current game, we'll see the following prompt:

=> Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9
This is ok, but we'd like for this message to read a little better. We want to separate the last item with a "or", so that it reads:

=> Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9
Currently, we're using the Array#join method, which can only insert a delimiter between the array elements, and isn't smart enough to display a joining word for the last element.

Write a method called joinor that will produce the following result:

```ruby
joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
Then, use this method in the TTT game when prompting the user to mark a square.


arr2 = [1,2]

arr3 = [1,2,3]


the default separator is a comma 
there is an option to pass in a separator, comma, or semicolon
there is an optional parameter to pass in "and" instead of the default or


when the array has only 2 elements 
  put an or between both elements with no comma on join

when the array has 3 elements the default return value is 
  element, element, or element

how many elements does the array have

array.count
count,split,and join the array without modifying the array

if arr2.count < 3
  arr2.join(" or ")
=> "1 or 2"

if arr3.count >= 3
arr3[0..-2].join(', ') + ', or ' + arr3.last.to_s
=> "1, 2, or 3"


def joinor(arr, separator = ", ", conjunction = "or")
    binding.pry
  if arr.count == 1
    arr.join
  elsif arr.count == 2
    arr[0].to_s + ' ' + "#{conjunction} " + arr[1].to_s
    #=> "1 or 2"
  else arr.count >= 3
    arr[0..-2].join("#{separator}") + "#{separator}" +"#{conjunction} " + arr.last.to_s
    #=> "1, 2, or 3"
  end
end



def some_method(a, b, c=25)
end
You may call the method above in one of two ways:

some_method(25,"hello")
or

some_method(25,"hello", 48)











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
                # board
def empty_squares(brd)               # empty string " "
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end
# =>[1, 2, 3, 4, 5, 6, 7, 8, 9]

                       # board
def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(',')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
             # from empty_squares =>[1, 2, 3, 4, 5, 6, 7, 8, 9]
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
  # update hash with new value "X" in the square, key chosen by player
end


                         # board
def computer_places_piece!(brd)
  square = empty_squares(brd).sample  
           # =>from empty_squares [1, 2, 3, 4, 5, 6, 7, 8, 9]
  brd[square] = COMPUTER_MARKER
end

              # board
def board_full?(brd)
  empty_squares(brd).empty?
  # from empty_sqares 
  # =>[1, 2, 3, 4, 5, 6, 7, 8, 9]
  # [].empty
  # true
end

               # board
def someone_won?(brd)
  # false
                # board
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      # first sub array of WINNING_LINES [1, 2, 3]
      # if the subarray has 3 elements with the value of "X" 
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end



# Gameplay

loop do # Initiate play again loop

  board = initialize_board
  # board 
  # => {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
  # board is passed into the method definition parameters brd
  loop do # begin the game

    display_board(board)
    # Display the empty board because all the values in the brd hash are empty strings.

    player_places_piece!(board)
    # update the board hash with board[square] = "X"
    #                              square = gets.chomp.to_i

    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    # update the board hash with board[square] = "O"
    #                                  square = empty_squares(brd).sample
    #           empty_squares(brd) =>  [1, 2, 3, 4, 5, 6, 7, 8, 9].sample

    break if someone_won?(board) || board_full?(board)
  end # end game
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
end # End play again loop 







def joinor(arr, separator = ", ", conjunction = "or")
    binding.pry
  if arr.count == 1
    arr.join
  elsif arr.count == 2
    arr[0].to_s + ' ' + "#{conjunction} " + arr[1].to_s
    #=> "1 or 2"
  else arr.count >= 3
    arr[0..-2].join("#{separator}") + "#{separator}" +"#{conjunction} " + arr.last.to_s
    #=> "1, 2, or 3"
  end
end

** ** ** *


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


def joinor(arr, separator = ", ", conjunction = "or")
    binding.pry
  if arr.count == 1
    arr.join
  elsif arr.count == 2
    arr[0].to_s + ' ' + "#{conjunction} " + arr[1].to_s
    #=> "1 or 2"
  else arr.count >= 3
    arr[0..-2].join("#{separator}") + "#{separator}" +"#{conjunction} " + arr.last.to_s
    #=> "1, 2, or 3"
  end
end



def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end
                # board
def empty_squares(brd)               # empty string " "
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end
# =>[1, 2, 3, 4, 5, 6, 7, 8, 9]

                       # board
def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
             # from empty_squares =>[1, 2, 3, 4, 5, 6, 7, 8, 9]
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
  # update hash with new value "X" in the square, key chosen by player
end


                         # board
def computer_places_piece!(brd)
  square = empty_squares(brd).sample  
           # =>from empty_squares [1, 2, 3, 4, 5, 6, 7, 8, 9]
  brd[square] = COMPUTER_MARKER
end

              # board
def board_full?(brd)
  empty_squares(brd).empty?
  # from empty_sqares 
  # =>[1, 2, 3, 4, 5, 6, 7, 8, 9]
  # [].empty
  # true
end

               # board
def someone_won?(brd)
  # false
                # board
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      # first sub array of WINNING_LINES [1, 2, 3]
      # if the subarray has 3 elements with the value of "X" 
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end



# Gameplay

loop do # Initiate play again loop

  board = initialize_board
  # board 
  # => {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
  # board is passed into the method definition parameters brd
  loop do # begin the game

    display_board(board)
    # Display the empty board because all the values in the brd hash are empty strings.

    player_places_piece!(board)
    # update the board hash with board[square] = "X"
    #                              square = gets.chomp.to_i

    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    # update the board hash with board[square] = "O"
    #                                  square = empty_squares(brd).sample
    #           empty_squares(brd) =>  [1, 2, 3, 4, 5, 6, 7, 8, 9].sample

    break if someone_won?(board) || board_full?(board)
  end # end game
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
end # End play again loop 







def joinor(arr, separator = ", ", conjunction = "or")
    binding.pry
  if arr.count == 1
    arr.join
  elsif arr.count == 2
    arr[0].to_s + ' ' + "#{conjunction} " + arr[1].to_s
    #=> "1 or 2"
  else arr.count >= 3
    arr[0..-2].join("#{separator}") + "#{separator}" +"#{conjunction} " + arr.last.to_s
    #=> "1, 2, or 3"
  end
end












