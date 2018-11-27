require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_ORDER = "player"
#PLAYER_ORDER = "computer"
# PLAYER_ORDER = "choose"


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd,player,computer,player_score, computer_score)
  system 'clear'
  puts "You are #{player}, the computer is #{computer}"
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

def player_places_piece!(brd, current_player)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = current_player
end

# begin computer ai logic
def winning_move(brd)
  winning_square_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 2  && brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = winning_square_arrays.flatten.find{|sq| brd[sq] == " " }
  square
end 

def block_players_winning_move(brd)
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end

  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
  end

 square = block_this_square.flatten.find{|sq| brd[sq] == " "}
 square
end

def find_3_open_squares(brd)
  three_open_squares = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 3
  end
  square = three_open_squares.flatten.find{|sq| brd[sq] == " " }
  square  
end 

def find_two_open_squares(brd)
  two_open_squares_and_one_o = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 1 && brd.values_at(line[0], line[1], line[2]).count(" ") == 2
  end
  square = two_open_squares_and_one_o.flatten.find{|sq| brd[sq] == " " }
  square
end 
# end computer ai logic

def computer_places_piece!(brd,mark_sqare_with_assigned_letter)
  if (winning_move(brd)).class == Integer 
    brd[winning_move(brd)] = mark_sqare_with_assigned_letter
  elsif (block_players_winning_move(brd)).class == Integer 
    brd[block_players_winning_move(brd)]= mark_sqare_with_assigned_letter
  elsif brd[5] == " "
    brd[5] = mark_sqare_with_assigned_letter
  elsif (find_3_open_squares(brd)).class == Integer
    brd[find_3_open_squares(brd)] = mark_sqare_with_assigned_letter
  elsif (find_two_open_squares(brd)).class == Integer
    brd[find_two_open_squares(brd)] = mark_sqare_with_assigned_letter
  end
  brd
end

# if the current player is x player places piece method is called
# if the current player is O the complacesPiece is called
# all this is doing is calling the method to place a piece, it doesnt have anything to do with order
# the statements could be swapped top to bottom and it woulnt matter because
# its a conditional
def place_piece! (brd, current_player)
  player_places_piece!(brd,current_player) if current_player == "X"
  computer_places_piece!(brd,current_player) if current_player == "O"
end

# this alternates the players turns from com to player but player always goes first, why?
def alternate_player(player)
  next_player_to_mark_a_square = "X" if player == "O"
  next_player_to_mark_a_square = "O" if player == "X"
  next_player_to_mark_a_square
end 

def board_full?(brd)
  empty_squares(brd).empty?
end

                      # this is current_player 
def someone_won?(brd, player_evaluated_for_winning_placement)

                      # this is current_player
  !!detect_winner(brd,player_evaluated_for_winning_placement)
end  

def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
     # if there are 3 sqares in a row marked with the player that just marked a sqare's assigned marker, "X" and the current player is X and player went first then the player is X
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X" && PLAYER_ORDER == "player"
      return "Player"

    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3      
      return "Computer"      
    end      
  end    
  nil  
end  

# PLAYER_ORDER = "player"
                # false
PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])

#PLAYER_ORDER = "computer"
                  # true
#PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker,computer_and_assigned_marker = ["X", "O"])

# PLAYER_ORDER = "choose"
# set_player_order == "computer" ? (computer_and_assgned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assgned_marker = ["X", "O"]) if PLAYER_ORDER == "choose"

current_player = player_and_assigned_marker if player_and_assigned_marker == "X"
current_player = computer_and_assigned_marker if computer_and_assigned_marker == "X"

loop do # play again y or n loop

  player_wins = 0
  computer_wins = 0

  loop do # first to 5 loop
  #binding.pry

    board = initialize_board
    #binding.pry
    loop do # win this round loop

      display_board(board,player_and_assigned_marker,computer_and_assigned_marker, player_wins,computer_wins)
      #binding.pry
      place_piece!(board, current_player)

      # current_player = alternate_player(current_player) # swap with previous line
      # break if someone_won?(board,current_player) || board_full?(board) # swap with next line

      # break if someone_won?(board,current_player) || board_full?(board)
      display_board(board,player_and_assigned_marker,computer_and_assigned_marker, player_wins,computer_wins)

    if someone_won?(board,current_player)
      prompt "#{detect_winner(board,current_player)} won that round!"
      sleep 1.5
      player_wins += 1 if detect_winner(board,current_player) == "Player"
      computer_wins += 1 if detect_winner(board,current_player) == "Computer"
      current_player = player_and_assigned_marker if player_and_assigned_marker == "X"
      current_player = computer_and_assigned_marker if computer_and_assigned_marker == "X"
      break
    elsif board_full?(board)
      prompt "It's a tie!"
      # reset the player order
      current_player = player_and_assigned_marker if player_and_assigned_marker == "X"
      current_player = computer_and_assigned_marker if computer_and_assigned_marker == "X"
      break
    end

    current_player = alternate_player(current_player)

    end # end win this round loop
    sleep 1.75
    #display_board(board,player_and_assigned_marker,computer_and_assigned_marker, player_wins,computer_wins)

    #sleep 1.5
    
    # player_wins += 1 if detect_winner(board,current_player) == "Player"
    # computer_wins += 1 if detect_winner(board,current_player) == "Computer"
    #binding.pry 
    #break if computer_wins == 5 || player_wins == 5
    break if computer_wins == 2 || player_wins == 2

  end # end first to 5 loop 
  
  prompt "Player won the game!" if player_wins == 2
  prompt "Computer won the game!" if computer_wins == 2
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"

