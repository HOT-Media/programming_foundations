
The computer currently picks a square at random. That's not very interesting. 

Let's make the computer defensive minded, so that if there's an immediate threat, then it will defend the 3rd square. 

We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row. 

If there's no immediate threat, then it will just pick a random square.






```ruby

require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

# LS
# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end

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
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
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
  !!detect_winner(brd)
end

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
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end





























def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
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

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]


2 xs in a row in one subarray is a threat

first and second element

second and third element


WINNING_LINES.each do |opponent_possible_win| 
  if opponent_possible_win[0..1] == "X"
    assign brd[3] to "O"
    brd[opponent_possible_win] [2] = "O"
  elsif opponent_possible_win[1..2] == "X"
    assign brd[1] to "O"




The computer currently picks a square at random. That not very interesting. 

Lets make the computer defensive minded, so that if there an immediate threat, then it will defend the 3rd square. 

Well consider an "immediate threat" to be 2 squares marked by the opponent in a row. 

If theres no immediate threat, then it will just pick a random square.



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


def computer_ai_defense_detect_2_in_a_row(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1]).count(PLAYER_MARKER) == 2
    computer mark line[2]
    elsif brd.values_at(line[1], line[2]).count(PLAYER_MARKER) == 2
     computer mark line[0]
    end
  end

end


def computer_places_piece!(brd)
  square = empty_squares(brd).sample

  brd[square] = COMPUTER_MARKER
end

player marks a square
com marks a square
player marks a square

computer places piece
  if computer detects 2 in a row
else
  use the default place piece


empty squares is an array of available squares
that are also hash keys



if the WINNING_LINES first array [1,2,3] has key x,x " " then square == 3
  square = WINNING_LINES[0][2]
               subarray [1,2,3]
                         {1=>"X", 2=>"X", 3=>" "}
                        subarray[2]
                        => 3
                        square = subarray[2]

def computer_ai_defense_detect_2_in_a_row(brd)
  square = nil
  WINNING_LINES.each do |opponent_possible_win|
    binding.pry
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      square = opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      square = opponent_possible_win[0]

    else square = empty_squares(brd).sample
    end
  end
  brd[square] = COMPUTER_MARKER
end



def computer_places_piece!(brd)
  square = empty_squares(brd).sample

  brd[square] = COMPUTER_MARKER
end

** ** ** *

def computer_ai_defense_detect_2_in_a_row(brd)
  square = nil
  WINNING_LINES.each do |opponent_possible_win|
    binding.pry
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      square = opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      square = opponent_possible_win[0]

    else square = empty_squares(brd).sample
    end
  end
  brd[square] = COMPUTER_MARKER
end





require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

# LS
# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end

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
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
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

def computer_ai_defense_detect_2_in_a_row(brd)
  square = nil
  WINNING_LINES.each do |opponent_possible_win|
    binding.pry
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      square = opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      square = opponent_possible_win[0]

    else square = empty_squares(brd).sample
    end
  end
  brd[square] = COMPUTER_MARKER
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

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
      #computer_places_piece!(board)
      computer_ai_defense_detect_2_in_a_row(board)
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
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end


********************************






require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

# LS
# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end

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
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
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

def computer_ai_defense_detect_2_in_a_row(brd)
  square = nil
  WINNING_LINES.each do |opponent_possible_win|
    binding.pry
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      return brd[(opponent_possible_win[2])] = COMPUTER_MARKER
      square = opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      return brd[(opponent_possible_win[0])] = COMPUTER_MARKER
    else square = empty_squares(brd).sample
    end
  end
  #brd[square] = COMPUTER_MARKER
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

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
      #computer_places_piece!(board)
      computer_ai_defense_detect_2_in_a_row(board)
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
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end



*************************************************Refactor AI 




require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
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
  !!detect_winner(brd)
end

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
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end











2 methods

block needed?
  yes
    block
  no
.sample


no block needed on the first placement 
no block needed on the second placement 

only block on the third round

computer place piece.sample
computer place piece.sample
computer turn piece 
               look for opponent_possible_win
               no
               computer_places_piece.sample
               yes
               computer_ai_defense_detect_2_in_a_row



block needed?


WINNING_LINES.each do |opponent_possible_win|
    binding.pry
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      block_needed = true
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]

    end
  end


how do I know how many squares have been placed
  squares left after first placement
    7
    second placement for player
    6 squares left
    when squares.length = 6 look for a opponent_possible_win

  add a conditional branch for when there are only 6 squares remaining

   


   player_places_piece


  if empty_squares(board) == 6



def detect_and_defend(brd)
  block_player = []
  WINNING_LINES.each do |opponent_possible_win|
  # binding.pry
    block_player << true if 
      brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      &&
      brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
    # block needed if opponent_possible_win .contains 2 X's && (.last == ' '|| .first == " ")
    end
  end

[block_player_key]
or
[nil]

k,v
[1,"O"]




return the key to place an X in 

defensive_move = detect_and_defend



computer_places_piece!(board)
 detect_and_defend(board)



defensive_move = detect_and_defend








** ** ** ** ** 
def computer_places_piece!(brd, defense_key)
  square = empty_squares(brd).sample if empty_squares(brd).length > 6
  square = defense_key if empty_squares(brd).length < 6
  brd[square] = COMPUTER_MARKER
end


computer_places_piece!(board,3)



def computer_places_piece!(brd, defense_key)
  square = empty_squares(brd).sample if empty_squares(brd).length > 6 || detect_and_defend == nil
  square = defense_key if empty_squares(brd).length < 6
  brd[square] = COMPUTER_MARKER
end

pices placed
detect
place piece




def detect_and_defend(brd)
  block_player = []
  WINNING_LINES.select do |opponent_possible_win|
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      block_player << true << opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      block_player << true << opponent_possible_win[0]
    else false
    end
  end
  block_player
end




detect_and_defend(board)
=> [true and square to block]
or 
=> empty array []


def computer_places_piece!(brd)
  square = empty_squares(brd).sample if empty_squares(brd).length > 6
  square = detect_and_defend(brd) if empty_squares(brd).length < 6

  # Mark board with a "O"
  brd[square] = COMPUTER_MARKER
end





count squares
  more than 6
  .sample
less than 6
defense


def detect_and_defend(brd)
  block_player = []
  WINNING_LINES.each do |opponent_possible_win|
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      # block_player << true << opponent_possible_win[2]
      block_player << opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      # block_player << true << opponent_possible_win[0]
      block_player << opponent_possible_win[0]
    else false
    end
  end
  block_player
end

detect_and_defend(board)

def computer_places_piece!(brd)
  square = empty_squares(brd).sample if empty_squares(brd).length > 6
  square = detect_and_defend(brd)[0] if empty_squares(brd).length < 6

  # Mark board with a "O"
  brd[square] = COMPUTER_MARKER
end




def computer_places_piece!(brd)
  binding.pry
  square = detect_and_defend(brd)[0] if empty_squares(brd).length < 6 && detect_and_defend(brd)[0].class == Integer
  square = empty_squares(brd).sample if empty_squares(brd).length > 6

  # Mark board with a "O"
  brd[square] = COMPUTER_MARKER
end

*************************************************



def computer_places_piece!(brd)
  binding.pry
  square = detect_and_defend(brd)[0] if empty_squares(brd).length < 6 && detect_and_defend(brd)[0].class == Integer
  square = empty_squares(brd).sample if empty_squares(brd).length > 6

  # Mark board with a "O"
  brd[square] = COMPUTER_MARKER
end


require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def detect_and_defend(brd)
  block_player = []
  WINNING_LINES.each do |opponent_possible_win|
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      # block_player << true << opponent_possible_win[2]
      block_player << opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      # block_player << true << opponent_possible_win[0]
      block_player << opponent_possible_win[0]
    else false
    end
  end
  block_player
end


def computer_places_piece!(brd)
  #binding.pry
  square = detect_and_defend(brd)[0] if empty_squares(brd).length < 6 && detect_and_defend(brd)[0].class == Integer
  square = empty_squares(brd).sample if empty_squares(brd).length > 6

  # Mark board with a "O"
  brd[square] = COMPUTER_MARKER
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

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
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end


*************************************************Refactor 3
require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def detect_and_defend(brd)
  block_player = []
  WINNING_LINES.each do |opponent_possible_win|
    if brd.values_at(opponent_possible_win[0], opponent_possible_win[1]) == ["X","X"]
      # block_player << true << opponent_possible_win[2]
      block_player << opponent_possible_win[2]
    elsif brd.values_at(opponent_possible_win[1], opponent_possible_win[2]) == ["X","X"]
      # block_player << true << opponent_possible_win[0]
      block_player << opponent_possible_win[0]
    else false
    end
  end
  block_player
end


def computer_places_piece!(brd)
  square = detect_and_defend(brd)[0] if empty_squares(brd).length < 7 && !!(empty_squares brd).detect{|square_number| square_number == detect_and_defend(brd)[0]}
  square = empty_squares(brd).sample if empty_squares(brd).length > 6 || detect_and_defend(brd)[0].class == Integer
  # Mark board with a "O"
  brd[square] = COMPUTER_MARKER
  #binding.pry
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

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
  prompt prompt "Thanks for playing Tic Tac Toe. Good bye!"
end


*************************************************Begin working version from_tic_tac_toe_bonus_feature_2.rb 
*************************************************Refactor With Flowchart ttt_bonus_feature_3.psd

require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
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
  !!detect_winner(brd)
end

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

************************************************* End working version 
Extract the arrays with 2 "X"


require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

board = {1=>"X", 2=>"X", 3=>" ", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

def return_all_arrays_with_2(brd)
  
  WINNING_LINES.select do |line|
    binding.pry     
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end  
end  
arrays_with_2 = return_all_arrays_with_2(board)
p  arrays_with_2


brd 
=> {1=>"X", 2=>"X", 3=>" ", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

two_x = return_all_arrays_with_2(board)
=> [[1, 2, 3], [7, 8, 9], [2, 5, 8]]

WINNING_LINES.select do |line|
  brd.values_at(line[0], line[1], line[2]).count("X") == 2
 end  
=> [[1, 2, 3], [7, 8, 9], [2, 5, 8]]



*************************************************
Extract the Arrays that do not have an "O"


require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

board = {1=>"X", 2=>"X", 3=>"O", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

two_x = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count("X") == 2
 end  

two_x

block_this_square = two_x.select do |subarr|
  board.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
end

binding.pry
block_this_square
=> [[7, 8, 9], [2, 5, 8]]


************************************************* Extract and place "O"


def return_all_lines_with_2(brd)
  WINNING_LINES.select do |line|
    binding.pry     
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end  
end  

two_x = return_all_lines_with_2 brd


block_this_square = two_x.select do |subarr|
  board.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
end


block_this_square
=> [[7, 8, 9], [2, 5, 8]]

What is the first availabe square in the block_this_square sub arrays?

square = block_this_square.flatten.find{|sq| board[sq] == " "}
=> 9

pass 9 to place "O"
brd[square] = "O"

************************************************

extract the lines that only have 1 or less X
 
require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

board = {1=>"X", 2=>"X", 3=>" ", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

def return_all_arrays_with_2(brd)
  
  WINNING_LINES.select do |line|
    binding.pry     
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end  
end  
arrays_with_2 = return_all_arrays_with_2(board)
p  arrays_with_2


brd 
=> {1=>"X", 2=>"X", 3=>" ", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

two_x = return_all_arrays_with_2(board)
=> [[1, 2, 3], [7, 8, 9], [2, 5, 8]]

WINNING_LINES.select do |line|
  brd.values_at(line[0], line[1], line[2]).count("X") == 2
 end  
=> [[1, 2, 3], [7, 8, 9], [2, 5, 8]]

*************************************************Offensive 

 is 5 available
 
brd[5] = "0" if brd[5] == " "

two open_sqares = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count(" ") == 2
 end

square = two_open_squares.flatten.find{|sq| board[sq] == " "  

three open_sqares = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count(" ") == 3
 end  

square = two_open_squares.flatten.find{|sq| board[sq] == " "

