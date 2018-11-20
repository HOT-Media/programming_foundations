require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_ORDER = "player"
# PLAYER_ORDER = "computer"
# PLAYER_ORDER = "choose"


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

def prompt(msg)
  puts "=>#{msg}"
end



# rubocop:disable Metrics/AbcSize
def display_board(brd,player_score,computer_score)
  system 'clear'
  puts "You are #{PLAYER_MARKER}, the computer is #{COMPUTER_MARKER}"
  puts "Your score: #{player_score}"
  puts "Computer score: #{computer_score}"
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

def joinor(arr, separator = ", ", conjunction = "or")
  if arr.count == 1
    arr.first
  elsif arr.count == 2
    arr[0].to_s + ' ' + conjunction + " " + arr[1].to_s
    #=> "1 or 2"
  elsif arr.count 3
    arr[0..-2].join(separator) + separator + "#{conjunction} " + arr.last.to_s
  end
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

def set_player_order 
  answer = ""
  loop do # validate input
  puts "Who is first, player or computer?"
    answer = gets.chomp
    break if answer == "player" || answer == "computer"
    "Please enter (player) or (computer)."
  end
  answer
end


def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = player_and_assigned_marker
end


# original

# def player_places_piece!(brd)
#   square = ''
#   loop do
#     prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)
#     prompt "Sorry that is not a valid choice"
#   end
#   brd[square] = PLAYER_MARKER
# end

# end original 



def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  *******new computer ai logic*********

  brd[square] = computer_and_assigned_marker
end


def place_piece! (brd, current_player)
  player_places_piece!(brd) if player_and_assigned_marker
  computer_places_piece!(brd) if computer_and_assigned_marker
end

def alternate player_or_computer
  !player_or_computer 
end



# original 

# def computer_places_piece!(brd)
#   square = empty_squares(brd).sample

#   brd[square] = COMPUTER_MARKER
# end

# def board_full?(brd)
#   empty_squares(brd).empty?
# end

# def someone_won?(brd)
#   !!detect_winner(brd)
# end

# end original

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(player_and_assigned_marker) == 3
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(computer_and_assigned_marker) == 3
      return "Computer"
    end
  end
  nil
end


# original

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
#       return "Player"
#     elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
#       return "Computer"
#     end
#   end
#   nil
# end

# end original

****place inside gameplay loop ********

PLAYER_ORDER = "player"
PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])
=> ["X", "O"]
player_and_assigned_marker
=> "X"
computer_and_assigned_marker
=> "O"



PLAYER_ORDER = "computer"
PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker,computer_and_assigned_marker = ["X", "O"])
=> ["X", "O"]
player_and_assigned_marker
=> "O"
computer_and_assigned_marker
=> "X"




PLAYER_ORDER = "choose"
set_player_order == "computer" ? (computer_and_assgned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assgned_marker = ["X", "O"]) if PLAYER_ORDER == "choose"

Who is first, player or computer?
player
=> ["X", "O"]

Who is first, player or computer?
computer
=> ["X", "O"]
computer
=> "X"


player_and assigned_marker = current_player if player_and_assigned_marker == "X"
computer_and_assigned_marker = current_player if computer_and_assigned_marker == "X"

toggle the current player 

current_player = alternate_player(current_player)

***********************************
***********************************
# new game loop

loop do
  display_board(board)
  place_piece!(board, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end


***********************************
***********************************





loop do # play again y or n loop
  player_wins = 0
  computer_wins = 0
  loop do # first to 5 loop
  #binding.pry
    board = initialize_board
    loop do
      display_board(board,player_wins,computer_wins)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board,player_wins,computer_wins)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won that round!"
    else
      prompt "It's a tie!"
    end
    
    sleep 1.5
     
    player_wins += 1 if detect_winner(board) == "Player"
    computer_wins += 1 if detect_winner(board) == "Computer"
    #binding.pry 
    break if computer_wins == 5 || player_wins == 5
  end
  
  prompt "Player won the game!" if player_wins == 5
  prompt "Computer won the game!" if computer_wins == 5

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"
