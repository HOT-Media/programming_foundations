require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
P_ONE_MARKER = "X"
P_TWO_MARKER = "O"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player_score, computer_score)
  system 'clear'
  puts "Your score: #{player_score}   Computer score: #{computer_score}"
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
  brd[square] = current_player # X or O
end

def winning_move(brd, xoro)
  winning_square_arrays = WINNING_LINES.select do |line|
    (brd.values_at(line[0], line[1], line[2]).count(xoro) == 2 &&
     brd.values_at(line[0], line[1], line[2]).count(" ") == 1)
  end
  square = winning_square_arrays.flatten.find { |sq| brd[sq] == " " }
  square
end

def players_potential_winning_squares(brd, xoro)
  if xoro == "O"
    opponent = "X"
  elsif xoro == "X"
    opponent = "O"
  end
  WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end
end

def block_win_with_this_square(brd, xoro)
  block_square = players_potential_winning_squares(brd, xoro).select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end
  square = block_square.flatten.find { |sq| brd[sq] == " " }
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

def computer_offense_defense!(brd, xoro)
  if winning_move(brd, xoro).class == Integer
    brd[winning_move(brd, xoro)] = xoro
  elsif block_win_with_this_square(brd, xoro).class == Integer
    brd[block_win_with_this_square(brd, xoro)] = xoro
  end
end

def computer_ai_logic!(brd, xoro)
  if brd[5] == " "
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

def computer_places_piece!(brd, xoro)
  if computer_offense_defense!(brd, xoro).class == Integer
    computer_offense_defense!(brd, xoro)
    return
  end
  computer_ai_logic!(brd, xoro)
end

def place_piece!(brd, current_player, player_order)
  if player_order == "player" && current_player == P_ONE_MARKER
    player_places_piece!(brd, current_player)
    return
  elsif player_order == "computer" && current_player == P_TWO_MARKER
    player_places_piece!(brd, current_player)
    return
  end
  computer_places_piece!(brd, current_player)
end

# def place_piece!(brd, current_player, player_order)
#   if current_player == "X" && player_order == "player"
#     player_places_piece!(brd, current_player)
#   elsif current_player == "X" && player_order == "computer"
#     computer_places_piece!(brd, current_player)
#   elsif current_player == "O" && player_order == "player"
#     computer_places_piece!(brd, current_player)
#   elsif current_player == "O" && player_order == "computer"
#     player_places_piece!(brd, current_player)
#   end
# end

def alternate_player(player)
  next_player_to_mark_a_square = "X" if player == "O"
  next_player_to_mark_a_square = "O" if player == "X"
  next_player_to_mark_a_square
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd, current_player, player_order)
  win_and_who_won = []
  win_and_who_won << !!detect_winner(brd, current_player, player_order)
  win_and_who_won << detect_winner(brd, current_player, player_order)
  win_and_who_won
end

def detect_winner(brd, current_player, player_order)
  the_winning_line = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
  end
  if the_winning_line.empty?
    return
  elsif player_order == "player" && current_player == P_ONE_MARKER
    return "Player"
  elsif player_order == "computer" && current_player == P_TWO_MARKER
    return "Player"
  end
  "Computer"
end

system 'clear'
prompt <<-WELCOME
Welcome to TTT.

Your opponent is technically the Ruby source code for
this game; however, your opponent will be referred to
as "Computer"

WELCOME

prompt "Please choose the player who will go first. Player or Computer?"
player_order = gets.chomp.downcase
if player_order == "player"
  player = P_ONE_MARKER
  computer = P_TWO_MARKER
elsif player_order == "computer"
  computer = P_ONE_MARKER
  player = P_TWO_MARKER
end
player == "X" ? current_player = player : current_player = computer
prompt "You are #{player}, the computer is #{computer}"

sleep 1.75
loop do
  player_wins = 0
  computer_wins = 0

  loop do
    board = initialize_board
    loop do
      display_board(board, player_wins, computer_wins)
      place_piece!(board, current_player, player_order)
      display_board(board, player_wins, computer_wins)
      if someone_won?(board, current_player, player_order)[0] == true
        prompt <<-WIN
"#{someone_won?(board, current_player, player_order)[1]} won that round!"
WIN
        sleep 1.5
        if detect_winner(board, current_player, player_order) == "Player"
          player_wins += 1
        elsif detect_winner(board, current_player, player_order) == "Computer"
          computer_wins += 1
        end
        display_board(board, player_wins, computer_wins)
        current_player = player if player == "X"
        current_player = computer if computer == "X"
        break
      elsif board_full?(board)
        prompt "It's a tie!"
        sleep 1.5
        current_player = player if player == "X"
        current_player = computer if computer == "X"
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
