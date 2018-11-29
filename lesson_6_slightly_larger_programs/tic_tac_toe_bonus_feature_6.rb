require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
#PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player, computer, player_score, computer_score)
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
    prompt "Who is first, player or computer?"
    answer = gets.chomp
    if answer == "player" || answer == "computer"
      break
    else
      prompt "Please enter (player) or (computer)."
    end
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

def winning_move(brd, xoro)
  winning_square_arrays = WINNING_LINES.select do |line|
    (brd.values_at(line[0], line[1], line[2]).count(xoro) == 2 &&
     brd.values_at(line[0], line[1], line[2]).count(" ") == 1)
  end
  square = winning_square_arrays.flatten.find { |sq| brd[sq] == " " }
  square
end

def block_players_winning_move(brd, xoro)
  xoro == "O" ? opponent = "X" : opponent = "O"
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end
  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end
  square = block_this_square.flatten.find { |sq| brd[sq] == " " }
  square
end

def find_3_open_squares(brd, _)
  three_open_squares = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 3
  end
  square = three_open_squares.flatten.find { |sq| brd[sq] == " " }
  square
end

def find_two_open_squares(brd, xoro)
  two_open_squares_and_one_o = WINNING_LINES.select do |line|
    (brd.values_at(line[0], line[1], line[2]).count(xoro) == 1 &&
     brd.values_at(line[0], line[1], line[2]).count(" ") == 2)
  end
  square = two_open_squares_and_one_o.flatten.find { |sq| brd[sq] == " " }
  square
end

def mark_tie_square(brd)
  tie_square = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = tie_square.flatten.find { |sq| brd[sq] == " " }
  square
end

def computer_places_piece!(brd, xoro)
  if winning_move(brd, xoro).class == Integer
    brd[winning_move(brd, xoro)] = xoro
  elsif block_players_winning_move(brd, xoro).class == Integer
    brd[block_players_winning_move(brd, xoro)] = xoro
  elsif brd[5] == " "
    brd[5] = xoro
  elsif find_3_open_squares(brd, xoro).class == Integer && xoro == "O"
    brd[find_3_open_squares(brd, xoro)] = xoro
  elsif find_two_open_squares(brd, xoro).class == Integer
    brd[find_two_open_squares(brd, xoro)] = xoro
  elsif mark_tie_square(brd).class == Integer
    brd[mark_tie_square(brd)] = xoro
  end
  brd
end

def place_piece!(brd, current_player)
  if PLAYER_ORDER == "player"
    player_places_piece!(brd, current_player) if current_player == "X"
    computer_places_piece!(brd, current_player) if current_player == "O"
  elsif PLAYER_ORDER == "computer"
    computer_places_piece!(brd, current_player) if current_player == "X"
    player_places_piece!(brd, current_player) if current_player == "O"
  end
end

def alternate_player(player)
  next_player_to_mark_a_square = "X" if player == "O"
  next_player_to_mark_a_square = "O" if player == "X"
  next_player_to_mark_a_square
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd, player_evaluated_for_winning_placement)
  !!detect_winner(brd, player_evaluated_for_winning_placement)
end

def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 &&
       current_player == "X"
      return "Player" if PLAYER_ORDER == "player"
      return "Computer" if PLAYER_ORDER == "computer"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 &&
          current_player == "O"
      return "Player" if PLAYER_ORDER == "computer"
      return "Computer" if PLAYER_ORDER == "player"

    end
  end
  nil
end

if PLAYER_ORDER == "computer"
  c_marker = "X"
  p_marker = "O"
elsif PLAYER_ORDER == "player"
  p_marker = "X"
  c_marker = "O"
end

# if PLAYER_ORDER == "computer"
#   (c_marker, p_marker = ["X", "O"])
# elsif PLAYER_ORDER == "player"
#   (p_marker, c_marker = ["X", "O"])
# end

current_player = p_marker if p_marker == "X"
current_player = c_marker if c_marker == "X"

loop do
  player_wins = 0
  computer_wins = 0

  loop do
    board = initialize_board
    loop do
      display_board(board, p_marker, c_marker, player_wins, computer_wins)
      place_piece!(board, current_player)
      display_board(board, p_marker, c_marker, player_wins, computer_wins)
      if someone_won?(board, current_player)
        prompt "#{detect_winner(board, current_player)} won that round!"
        sleep 1.5
        player_wins += 1 if detect_winner(board, current_player) == "Player"
        computer_wins += 1 if detect_winner(board, current_player) == "Computer"
        display_board(board, p_marker, c_marker, player_wins, computer_wins)
        current_player = p_marker if p_marker == "X"
        current_player = c_marker if c_marker == "X"
        break
      elsif board_full?(board)
        prompt "It's a tie!"
        sleep 1.5
        # reset the player order
        current_player = p_marker if p_marker == "X"
        current_player = c_marker if c_marker == "X"
        break
      end
      current_player = alternate_player(current_player)
    end

    break if computer_wins == 5 || player_wins == 5
  end

  prompt "Player won the game!" if player_wins == 5
  prompt "Computer won the game!" if computer_wins == 5
  answer = nil
  loop do
    prompt "Play again? (yes or no)"
    answer = gets.chomp
    if answer.downcase == "yes" || answer.downcase == "no"
      break
    else
      prompt "Valid answers are yes or no"
    end
  end
  break if answer.downcase == "no"
end
prompt "Thanks for playing Tic Tac Toe. Good bye!"
