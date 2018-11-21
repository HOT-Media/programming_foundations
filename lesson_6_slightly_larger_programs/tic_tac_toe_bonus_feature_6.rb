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







# begin computer ai logic

def winning_move(brd)
  winning_sqare_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 2  && brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = winning_squares_array.flatten.find{|sq| board[sq]} == " " 
  square
end 




def block_players_winning_move(brd)
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end

  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
  end

 square = block_this_square.flatten.find{|sq| board[sq] == " "}
 square
end






def find_3_open_squares(brd)
  three open_sqares = WINNING_LINES.select do |line|
    board.values_at(line[0], line[1], line[2]).count(" ") == 3
  end
  square = three_open_squares.flatten.find{|sq| board[sq]} == " " 
  square  
end 




def find_two_open_squares(brd)
  two_open_sqares_and_one_o = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 1 && brd.values_at(line[0], line[1], line[2]).count(" ") == 2
  end
  square = two_open_squares_and_one_o.flatten.find{|sq| board[sq]} == " " 
  square
end 

# end computer ai logic






def computer_places_piece!(brd)
  square = winning_move(brd) if (winning_move(brd)).class == Integer 
  square = block_players_winning_move(brd) if (block_players_winning_move(brd)).class == Integer
  square = brd[5]  if brd[5] == " "
  square = find_3_open_squares(brd) if (find_3_open_squares(brd)).class == Integer
  square = find_two_open_squares(brd) if (find_two_open_squares(brd)).class == Integer
  brd[square] = computer_and_assigned_marker
end






def place_piece! (brd, current_player)
  player_places_piece!(brd) if current_player == "X"
  computer_places_piece!(brd) if current_player == "O"
end






def alternate player_or_computer
  !player_or_computer 
end



def board_full?(brd)
  empty_squares(brd).empty?
end



def someone_won?(brd)
  !!detect_winner(brd)
end



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

# begin game play

# PLAYER_ORDER = "player"
PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])

# PLAYER_ORDER = "computer"
# PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker,computer_and_assigned_marker = ["X", "O"])

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
    binding.pry
    loop do # win this round loop
      display_board(board,player_and_assigned_marker,computer_and_assigned_marker, player_wins,computer_wins)
      binding.pry
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end # end win this round loop

    display_board(board,player_and_assigned_marker,computer_and_assigned_marker, player_wins,computer_wins)

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
  end # end first to 5 loop 
  
  prompt "Player won the game!" if player_wins == 5
  prompt "Computer won the game!" if computer_wins == 5

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"

