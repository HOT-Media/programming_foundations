
The comput er currently picks a square at random. That's not very interesting. 

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

extract the lines/arrays that only have 1 or less X
 
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

*******************************************************************************************************************************Offensive 
is a win available
  see flowchart

is 5 available

brd[5] = "0" if brd[5] == " "



two open_sqares = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count(" ") == 2
 end

square = two_open_squares.flatten.find{|sq| board[sq] == " "  

three open_sqares = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count(" ") == 3
 end  

square = three_open_squares.flatten.find{|sq| board[sq] == " "




********************


def set_playing_sequence
  who_begins == "h" ? [PLAYER_MARKER, PC_MARKER] : [PC_MARKER, PLAYER_MARKER]
end

ef choose_first_player
  human = nil
  computer = nil
  loop do
    prompt("Who should go first? Type 'c' for computer and 'h' for human.")
    input = gets.chomp.downcase
    if input == 'c' && input.size == 1
      computer, human = MARKERS
      break
    elsif input == 'h' && input.size == 1
      human, computer = MARKERS
      break
    end
    prompt("Not a valid response. Please try again.")
  end
  [human, computer]
end


INITIAL_PLAYER = 'choose' # choose, player, or computer

PLAYER_ONE_MARKER = 'X'
PLAYER_TWO_MARKER = 'O'
MARKERS = [PLAYER_ONE_MARKER, PLAYER_TWO_MARKER]


def choose_first_player
  human = nil
  computer = nil
  loop do
    prompt("Who should go first? Type 'c' for computer and 'h' for human.")
    input = gets.chomp.downcase
    if input == 'c' && input.size == 1
      computer, human = MARKERS
      break
    elsif input == 'h' && input.size == 1
      human, computer = MARKERS
      break
    end
    prompt("Not a valid response. Please try again.")
  end
  [human, computer]
end

def plays_first
  human = nil
  computer = nil
  if INITIAL_PLAYER == 'player'
    human, computer = MARKERS
  elsif INITIAL_PLAYER == 'computer'
    computer, human = MARKERS
  else
    human, computer = choose_first_player
  end
  [human, computer]
end


c = nil
=> nil
h = nil
=> nil
IP = 'player'
=> "player"

PLAYER_ONE_MARKER = 'X'
=> "X"
PLAYER_TWO_MARKER = 'O'
=> "O"
MARKERS = [PLAYER_ONE_MARKER, PLAYER_TWO_MARKER]
=> ["X", "O"]
h, c = MARKERS
=> ["X", "O"]
c
=> "O"
h
=> "X"
c,h = MARKERS
=> ["X", "O"]
c
=> "X"
h
=> "O"

based on this code it looks like x always goes first and the player is 
assigned to the variable x
x does always go first

YOU 
COMPUTER 

if i go first, i use x
if you go first you use x

make the order of x o a constant
["X", "O"]

who is x

who goes first
who wants to be x
assign who to X and who to O

player is not prompted to choose who goes first, the constant is 
hard coded 






state =
  { name: player_name,
    first_turn: FIRST_TURN == 'choose' ? determine_first_turn : FIRST_TURN,
    current_turn: '',
    player: 0,
    ai: 0 }

puts ""
prompt "Welcome to Tic-Tac-Toe!"
prompt" First player to win #{WIN_LIMIT} rounds, gets a trophy!"
prompt "Press Enter to start the game."
gets

loop do # game loop
  board = init_board
  state[:current_turn] = state[:first_turn]





loop do
  display_board(board)

  player_places_piece!(board)
  break if someone_won?(board) || board_full?(board)

  computer_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
end



loop do
  display_board(board)
  place_piece!(board, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end




loop do
  display_board(board,player_wins,computer_wins)
  player_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
  computer_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
 end





alternate player



loop do
  display_board(board)
  current_player = user
                      prompt user to go 
  place_piece!(board, current_player)

  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end



current_player = alternate_player(current_player)


def place_piece!(board, current_player)
  player_places_piece
  computer_places_piece
end


alternate_player (current_player)


loop do
  display_board(board)
  current_player = user
                      
  place_piece!(board, current_player)

  current_player = alternate_player(current_player)

  break if someone_won?(board) || board_full?(board)
end




user is player_one 
computer is player_two 


start with 




loop do
  display_board(board)


  place_piece!(board, current_player)


  current_player = alternate_player(current_player)


  break if someone_won?(board) || board_full?(board)
end




def place_piece!(brd, current_player)
  current_player # 




current_user = true

def alternate player
  !player  
end

current_user = alternate current_user
=> false
current_user = alternate current_user
=> true
    
player one places piece if true
player two places piece if false




current_player = true
current_player ?  player_one : player_two 











current_player = true
current_player ?  1 : 2



current_player
=> true
alternate current_player
=> false
current_player = alternate current_player
=> false
current_player = alternate current_player
=> true
current_player = alternate current_player
=> false
current_player = alternate current_player
=> true


def alternate player
  !player  
end


current_player = true

current_player = alternate current_player
=> false
current_player = alternate current_player
=> true


current_player ? player_one : player_two
=> player_one  


current_player ? player_one : player_two
=> player_one  


loop do
  display_board(board)

                      player_places_piece!
  place_piece!(board, current_player)


  current_player = alternate_player(current_player)


  break if someone_won?(board) || board_full?(board)
end



*************************************************

drop 
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

initialize 

PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"
PLAYER_ORDER = "choose"

PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"
PLAYER_ORDER = "choose"


PLAYER_ORDER == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])


def set_player_order ()
  loop do # validate input
  puts "Who is first, player or computer?"
    answer = gets.chomp
    break if answer == "player" || "computer"
    "Please enter (player) or (computer)."
  end
  answer == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])
end








PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"
PLAYER_ORDER = "choose"


PLAYER_ORDER == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])


def set_player_order 
  answer = ""
  loop do # validate input
  puts "Who is first, player or computer?"
    answer = gets.chomp
    break if answer == "player" || "computer"
    "Please enter (player) or (computer)."
  end
  answer == "player" ? (player, computer = ["X", "O"]) : (computer, player = ["X", "O"])
end






def set_player_order 
  answer = ""
  loop do # validate input
  puts "Who is first, player or computer?"
    answer = gets.chomp
    break if answer == "player" # || "computer"
    puts "Please enter (player) or (computer)."
  end
return answer == "player" ? (player, computer = ["X", "O"]) : (computer, player = ["X", "O"])
end


players = [player_marker, computer_marker ]

def set_player_order, (players_waiting_for_order_assignment) 
  answer = ""
  loop do # validate input
  puts "Who is first, player or computer?"
    answer = gets.chomp
    break if answer == "player" # || "computer"
    puts "Please enter (player) or (computer)."
  end
 answer == "player" ? (players_waiting_for_marker_assignment[0], players_waiting_for_marker_assignment[1] = ["X", "O"]) : (players_waiting_for_marker_assignment[1], players_waiting_for_marker_assignment[0] = ["X", "O"])
 players_waiting_for_marker_assignment
end














PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"
PLAYER_ORDER = "choose"


PLAYER_ORDER == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])
set_player_order == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"]) if PLAYER_ORDER == "choose"

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



PLAYER_ORDER = "choose"
(pry):78: warning: already initialized constant PLAYER_ORDER
(pry):40: warning: previous definition of PLAYER_ORDER was here
=> "choose"

set_player_order == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"]) if PLAYER_ORDER == "choose"
Who is first, player or computer?
computer
=> ["X", "O"]
computer
=> "X"
player
=> "O"


**************************************************************************************************************************assign X or O to player

PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"
PLAYER_ORDER = "choose"



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



PLAYER_ORDER == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])
set_player_order == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"]) if PLAYER_ORDER == "choose"



PLAYER_ORDER = "player"
PLAYER_ORDER == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])
=> ["X", "O"]
player
=> "X"
computer
=> "O"


PLAYER_ORDER = "computer"
PLAYER_ORDER == "computer" ? (computer, player = ["X", "O"]) : (player, computer = ["X", "O"])
=> ["X", "O"]
player
=> "O"
computer
=> "X"



PLAYER_ORDER = "choose"
set_player_order == "computer" ? (computer_and_assgned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assgned_marker = ["X", "O"]) if PLAYER_ORDER == "choose"

Who is first, player or computer?
player
=> ["X", "O"]
player
=> "X"
computer
=> "O"

Who is first, player or computer?
computer
=> ["X", "O"]
computer
=> "X"
player
=> "O"

change
computer, player = ["X", "O"]
to 
computer_marker, player_marker

player_marker
=> "X"
computer_marker
=> "O"



**************************************************************************************************************************assign X or O to player TEST : Passed



















PLAYER_ORDER = "player"
PLAYER_ORDER = "computer"
PLAYER_ORDER = "choose"



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


PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])
set_player_order == "computer" ? (computer_and_assigned_marker, player = ["X", "O"]) : (player, computer_and_assigned_marker = ["X", "O"]) if PLAYER_ORDER == "choose"



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











player_and_assigned_marker, computer_and_assgned_marker are initialized above and represent the player and computer 

the computer counts the number of player_and_assigned_markers and computer_and_assigned_markers and determines a winner when 3


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



def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  *******new computer ai logic*********

  brd[square] = computer_and_assigned_marker
end




set current_player

player_and assigned_marker = current_player if player_and_assigned_marker == "X"
computer_and_assigned_marker = current_player if computer_and_assigned_marker == "X"


def place_piece! (brd, current_player)
  player_places_piece!(brd) if player_and_assigned_marker
  computer_places_piece!(brd) if computer_and_assigned_marker
end


def alternate player_or_computer
  !player_or_computer 
end



toggle the current player 

current_player = alternate_player(current_player)

def alternate player_or_computer
  !player_or_computer 
end



loop do
  display_board(board)
  place_piece!(board, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end








computer ai logic
**********************
board = {1=>"X", 2=>"X", 3=>" ", 4=>"X", 5=>" ", 6=>" ", 7=>"X", 8=>"X", 9=>" "}

board is passed in to parameter brd so anywhere brd is inside a method it is referencing board
brd is the parameter
board is the Hash 



def winning_move(brd)
  Extract Arrays with two "O"s and 1 empty square
  winning_sqare_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 2
    &&
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  # find first sqare of the first array extracted
  square = winning_squares_array.flatten.find{|sq| board[sq] == " " 
  square
end 
#=> returns an integer representing the square to pass into computer marks square









the board will have 2 squares marked by the player in a potentially winning combination
  return an array of all the subarrays that contain X, X in a row from WINNING LINES
          return an array of all the subarrays that do not have an O from the array above
            computer adds an O to the first array in the returned array from above



Iterate through WINNING_LINES and extract the subarrays representing lines that have 2 Xs

def return_all_arrays_with_2_x(brd)
  
  WINNING_LINES.select do |line|
    binding.pry     
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end  
end  

=> [[1, 2, 3], [7, 8, 9], [2, 5, 8]]




iterate through sub arrays of arrays with 2 Xs and extract the subarrays that do not have an "O"

two_x = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count("X") == 2
 end  

two_x

block_this_square = two_x.select do |subarr|
  board.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
end

block_this_square
=> [[7, 8, 9], [2, 5, 8]]
  


What is the first availabe square in the block_this_square sub arrays?

square = block_this_square.flatten.find{|sq| board[sq] == " "}
=> 9

brd[sqare] = "O"





def return_all_arrays_with_2_x(brd)
  
  WINNING_LINES.select do |line|
    binding.pry     
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end  
end  
=> [[1, 2, 3], [7, 8, 9], [2, 5, 8]]




two_x = WINNING_LINES.select do |line|
  board.values_at(line[0], line[1], line[2]).count("X") == 2
 end  

two_x

block_this_square = two_x.select do |subarr|
  board.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
end

block_this_square
=> [[7, 8, 9], [2, 5, 8]]
  


What is the first availabe square in the block_this_square sub arrays?

square = block_this_square.flatten.find{|sq| board[sq] == " "}
=> 9

brd[sqare] = "O"






def block_players_winning_move(brd)

  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end

  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
  end

  # block_this_square
  # => [[7, 8, 9], [2, 5, 8]]
  # What is the first availabe square in the block_this_square sub arrays?

 square = block_this_square.flatten.find{|sq| board[sq] == " "}
 square
end
# integer
# or 
# nil 




















def computer_places_piece!(brd)
  
  # go for the winning square
  winning_move(brd)
  => integer 
  => []
  square = winning_move(board) if (winning_move(board)).class == Integer 





  square = empty_squares(brd).sample
  *******new computer ai logic*********

  brd[square] = computer_and_assigned_marker
end





















# computer makes winning movew
def winning_move(brd)
  Extract Arrays with two "O"s and 1 empty square
  winning_sqare_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 2
    &&
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  # find first sqare of the first array extracted
  square = winning_squares_array.flatten.find{|sq| board[sq] == " " 
  square
end 
#=> returns an integer representing the square to pass into computer marks square




def block_players_winning_move(brd)
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("X") == 2
  end

  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count("O") == 0
  end

  # block_this_square
  # => [[7, 8, 9], [2, 5, 8]]
  # What is the first availabe square in the block_this_square sub arrays?

 square = block_this_square.flatten.find{|sq| board[sq] == " "}
 square
end
# integer
# or 
# nil 


def find_3_open_squares(brd)
  three open_sqares = WINNING_LINES.select do |line|
    board.values_at(line[0], line[1], line[2]).count(" ") == 3
  end
  square = three_open_squares.flatten.find{|sq| board[sq] == " " 
  square  
end 


def find_two_open_squares(brd)
  two_open_sqares_and_one_o = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 1
      &&
    brd.values_at(line[0], line[1], line[2]).count(" ") == 2
  end
  square = two_open_squares_and_one_o.flatten.find{|sq| board[sq] == " " 
  square
end 






def computer_places_piece!(brd)

  square = winning_move(brd) if (winning_move(brd)).class == Integer 

  square = block_players_winning_move(brd) if (block_players_winning_move(brd)).class == Integer

  square = brd[5]  if brd[5] == " "

  square = find_3_open_squares(brd) if (find_3_open_squares(brd)).class == Integer

  square = find_two_open_squares(brd) if (find_two_open_squares(brd)).class == Integer

  brd[square] = computer_and_assigned_marker

end


************************************************************************
************************************************************************Final AI logic

# begin computer ai logic

def winning_move(brd)
  Extract Arrays with two "O"s and 1 empty square
  winning_sqare_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 2
    &&
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = winning_squares_array.flatten.find{|sq| board[sq] == " " 
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
  square = three_open_squares.flatten.find{|sq| board[sq] == " " 
  square  
end 

def find_two_open_squares(brd)
  two_open_sqares_and_one_o = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 1
      &&
    brd.values_at(line[0], line[1], line[2]).count(" ") == 2
  end
  square = two_open_squares_and_one_o.flatten.find{|sq| board[sq] == " " 
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
************************************************************************
************************************************************************

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





PLAYER_ORDER = "player"
# PLAYER_ORDER = "computer"
# PLAYER_ORDER = "choose"



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


PLAYER_ORDER = "player"
PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])
=> ["X", "O"]
player_and_assigned_marker
=> "X"
computer_and_assigned_marker
=> "O"

player_and assigned_marker = current_player if player_and_assigned_marker == "X"
computer_and_assigned_marker = current_player if computer_and_assigned_marker == "X"

# toggle the current player 

# current_player = alternate_player(current_player)


PLAYER_ORDER = "player"
PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])
# player_and_assigned_marker
# => "X"
player_and assigned_marker = current_player if player_and_assigned_marker == "X"


loop do
  display_board(brd)
  place_piece!(brd, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(brd) || board_full?(brd)
end



*************************************************Updated gameplay loop



def place_piece!(brd, current_player)
  player_places_piece!(brd) if player_and_assigned_marker
  computer_places_piece!(brd) if computer_and_assigned_marker
end






loop do # play again y or n loop
  player_wins = 0
  computer_wins = 0
  loop do # first to 5 loop
  #binding.pry
    board = initialize_board
    loop do # win this round loop
      display_board(board,player_wins,computer_wins)
      place_piece!(brd, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(brd) || board_full?(brd)
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















current_user = true

def alternate_player(player)
  next_player_to_mark_a_square = "X" if player == "O"
  next_player_to_mark_a_square = "O" if player == "X"
  next_player_to_mark_a_square
end  


current_user = alternate_player current_user
=> false
current_user = alternate_player current_user
=> true
    

def alternate_player(player, computer)










def someone_won?(brd, player_evaluated_for_winning_placement)
  !!detect_winner(brd,player_evaluated_for_winning_placement)
end  
=> :someone_won?


def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3    
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3      
      return "Computer"      
    end      
  end    
  nil  
end  






[1] pry(main)> brd
=> {1=>" ", 2=>" ", 3=>"X", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}




brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "



#                          X
def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
     # if there are 3 sqares in a row marked with the player that just marked a sqare's assigned marker, "X" and the current player is X and player went first then the player is X
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X" && PLAYER_ORDER == "player"
      return "Player"
    # return "Player"
    # elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
    # return "Computer"
    # the current player is passed in as an X or an O, 
    # return the current player asssociated with X or O    
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3      
      return "Computer"      
    end      
  end    
  nil  
end  













[22] pry(main)> brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "
=> "O"
[23] pry(main)> brd
=> {1=>"X", 2=>" ", 3=>" ", 4=>" ", 5=>"O", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
[24] pry(main)> 


brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "


                                  # "O"
def computer_places_piece!(brd,mark_sqare_with_assigned_letter)
  square = winning_move(brd) if (winning_move(brd)).class == Integer 
  square = block_players_winning_move(brd) if (block_players_winning_move(brd)).class == Integer
  brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "
  # return here
  # square = brd[5]  if brd[5] == " "
  square = find_3_open_squares(brd) if (find_3_open_squares(brd)).class == Integer
  square = find_two_open_squares(brd) if (find_two_open_squares(brd)).class == Integer
  brd[square] = mark_sqare_with_assigned_letter
end








case 
when integer mark square

  ternary

brd[winning_move(brd)] = mark_sqare_with_assigned_letter if (winning_move(brd)).class == Integer



def computer_places_piece!(brd,mark_sqare_with_assigned_letter)

  brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "
end





def computer_places_piece!(brd,mark_sqare_with_assigned_letter)
  square = winning_move(brd) if (winning_move(brd)).class == Integer 
  square = block_players_winning_move(brd) if (block_players_winning_move(brd)).class == Integer
  brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "
  # return here
  # square = brd[5]  if brd[5] == " "
  square = find_3_open_squares(brd) if (find_3_open_squares(brd)).class == Integer
  square = find_two_open_squares(brd) if (find_two_open_squares(brd)).class == Integer
  brd[square] = mark_sqare_with_assigned_letter
end


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


COMPUTER_LOGIC = [
                  winning_move(brd),
                  block_players_winning_move(brd),
                  brd[5] == " ",
                  find_3_open_squares(brd),
                  find_two_open_squares(brd)
                 ]




  #brd[5] = mark_sqare_with_assigned_letter if brd[5] == " "
  # return here
  # square = brd[5]  if brd[5] == " "
  square = find_3_open_squares(brd) if (find_3_open_squares(brd)).class == Integer
  square = find_two_open_squares(brd) if (find_two_open_squares(brd)).class == Integer
  brd[square] = mark_sqare_with_assigned_letter
end




w = [find_3_open_squares(brd), 1]
=> [7, 1]
[].deleteif nil brd = the first integer after nil is removed







COMPUTER_LOGIC = [
                  winning_move(brd),
                  block_players_winning_move(brd),
                  brd[5] == " ",
                  find_3_open_squares(brd),
                  find_two_open_squares(brd)
                 ]


brd[COMPUTER_LOGIC.first] = mark_sqare_with_assigned_letter





w = [
                  winning_move(brd),
                  block_players_winning_move(brd),
                  brd[5] == " ",
                  find_3_open_squares(brd),
                  find_two_open_squares(brd)
                 ]






def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3      
      return "Computer"      
    end      
  end    
  nil  
end  




#                          X
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



*************************************************First working program 

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














# #     Old computer places piece
# def computer_places_piece!(brd,mark_sqare_with_assigned_letter)
#   square = winning_move(brd) if (winning_move(brd)).class == Integer 
#   square = block_players_winning_move(brd) if (block_players_winning_move(brd)).class == Integer
#   square = brd[5]  if brd[5] == " "
#   square = find_3_open_squares(brd) if (find_3_open_squares(brd)).class == Integer
#   square = find_two_open_squares(brd) if (find_two_open_squares(brd)).class == Integer
#   brd[square] = mark_sqare_with_assigned_letter
# end
# # end old com places piece





def place_piece! (brd, current_player)
  player_places_piece!(brd,current_player) if current_player == "X"
  computer_places_piece!(brd,current_player) if current_player == "O"
end






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






#                          X
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





# old detect_winner
# def detect_winner(brd, current_player)
#   WINNING_LINES.each do |line|
#     if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
#       return "Player"
#     elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3      
#       return "Computer"      
#     end      
#   end    
#   nil  
# end  
# end old detect_winner












# def someone_won?(brd)
#   !!detect_winner(brd)
# end



# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(line[0], line[1], line[2]).count(player_and_assigned_marker) == 3
#       return "Player"
#     elsif brd.values_at(line[0], line[1], line[2]).count(computer_and_assigned_marker) == 3
#       return "Computer"
#     end
#   end
#   nil
# end











# begin game play

# PLAYER_ORDER = "player"
                # false
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


*************************************************end first working 








COMPUTER_LOGIC = [
                  winning_move(brd),
                  block_players_winning_move(brd),
                  brd[5] == " ",
                  find_3_open_squares(brd),
                  find_two_open_squares(brd)
                 ]


brd[COMPUTER_LOGIC.find{|element| element.class == Integer}] = mark_sqare_with_assigned_letter






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




current_player == "X"  && PLAYER_ORDER == "player" ? player_places_piece!(brd,current_player) : computer_places_piece!(brd,current_player)




def place_piece! (brd, current_player)
  if current_player == "X"  && PLAYER_ORDER == "player" 
    player_places_piece!(brd,current_player)
  else computer_places_piece!(brd,current_player)
end







def place_piece! (brd, current_player)
  if PLAYER_ORDER == "player"
    player_places_piece!(brd,current_player) if current_player == "X"
    computer_places_piece!(brd,current_player) if current_player == "O"
  elsif PLAYER_ORDER == "computer"
    computer_places_piece!(brd,current_player) if current_player == "X"
    player_places_piece!(brd,current_player) if current_player == "O"
end




find tie sqare find one square

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
  elsif (mark_tie_square(brd)).class == Integer
    brd[mark_tie_square(brd)] = mark_sqare_with_assigned_letter
  end
  brd
end




def mark_tie_square(brd)
  tie_square = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = tie_square.flatten.find{|sq| brd[sq] == " " }
  square
end 


when the computer goes first the com should look first for the winins square    2 X and one " "
then look for a blocking square 2 O and one " "
then look for a line with 1 X and 2 empty squares

then 


def computer_places_piece!(brd,mark_sqare_with_assigned_letter)
  if (winning_move(brd, xoro)).class == Integer 
    brd[winning_move(brd)] = mark_sqare_with_assigned_letter
  elsif (block_players_winning_move(brd)).class == Integer 
    brd[block_players_winning_move(brd)]= mark_sqare_with_assigned_letter
  elsif brd[5] == " "
    brd[5] = mark_sqare_with_assigned_letter

  elsif (find_3_open_squares(brd)).class == Integer && mark_sqare_with_assigned_letter == "X"
    brd[find_3_open_squares(brd)] = mark_sqare_with_assigned_letter
  elsif (find_two_open_squares(brd)).class == Integer
    brd[find_two_open_squares(brd)] = mark_sqare_with_assigned_letter
  elsif (mark_tie_square(brd)).class == Integer
    brd[mark_tie_square(brd)] = mark_sqare_with_assigned_letter
  end
  brd
end

change winning move to have a parameter for marker then pass in mark_sqare_with_assigned_letter


def winning_move(brd, xoro)
  winning_square_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(xoro) == 2  && brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = winning_square_arrays.flatten.find{|sq| brd[sq] == " " }
  square
end 












def winning_move(brd, xoro)
  winning_square_arrays = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(xoro) == 2  && brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = winning_square_arrays.flatten.find{|sq| brd[sq] == " " }
  square
end 










# def winning_move(brd)
#   winning_square_arrays = WINNING_LINES.select do |line|
#     brd.values_at(line[0], line[1], line[2]).count("O") == 2  && brd.values_at(line[0], line[1], line[2]).count(" ") == 1
#   end
#   square = winning_square_arrays.flatten.find{|sq| brd[sq] == " " }
#   square
# end 


not " " and not oxo

def block_players_winning_move(brd, xoro)
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count do |element|
  element != ' ' && element != xoro
  end  
end

  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end

 square = block_this_square.flatten.find{|sq| brd[sq] == " "}
 square
end


arr.count do |element|
  element != ' ' && element != oxo
end  
=> 2






def find_3_open_squares(brd)
  three_open_squares = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 3
  end
  square = three_open_squares.flatten.find{|sq| brd[sq] == " " }
  square  
end 

def find_two_open_squares(brd,xoro)
  two_open_squares_and_one_o = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count("O") == 1 && brd.values_at(line[0], line[1], line[2]).count(" ") == 2
  end
  square = two_open_squares_and_one_o.flatten.find{|sq| brd[sq] == " " }
  square
end 

def mark_tie_square(brd)
  tie_square = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end
  square = tie_square.flatten.find{|sq| brd[sq] == " " }
  square
end 





























def computer_places_piece!(brd,xoro)
  if (winning_move(brd,xoro)).class == Integer 
    brd[winning_move(brd,xoro)] = xoro

  elsif (block_players_winning_move(brd,xoro)).class == Integer  
    brd[block_players_winning_move(brd,xoro)]= xoro

  elsif brd[5] == " "
    brd[5] = xoro

  elsif (find_3_open_squares(brd,xoro)).class == Integer  && xoro == "X"
    brd[find_3_open_squares(brd,xoro)] = xoro

  elsif (find_two_open_squares(brd,xoro)).class == Integer 
    brd[find_two_open_squares(brd,xoro)] = xoro

  elsif (mark_tie_square(brd,xoro)).class == Integer 
    brd[mark_tie_square(brd,xoro)] = xoro

  end
  brd
end



def block_players_winning_move(brd, xoro)
  xoro == "O" ?   opponent = "X" : opponent = "O"
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end

  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end

 square = block_this_square.flatten.find{|sq| brd[sq] == " "}
 square
end







PLAYER_ORDER = "choose"

if PLAYER_ORDER == "choose"
  set_player_order == "computer" ? (computer_and_assgned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assgned_marker = ["X", "O"]) 
end

current_player = player_and_assigned_marker if player_and_assigned_marker == "X"
current_player = computer_and_assigned_marker if computer_and_assigned_marker == "X"



def set_player_order 
  answer = ""
  loop do # validate input
  prompt "Who is first, player or computer?"
    answer = gets.chomp
    break if answer == "player" || answer == "computer"
    "Please enter (player) or (computer)."
  end
  answer
end



PLAYER_ORDER == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])


chosen_player = set_player_order if PLAYER_ORDER == "choose"
chosen_player == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"]) 


if PLAYER_ORDER == "computer"
  (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"])
elsif PLAYER_ORDER == "player"
  (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"])
elsif PLAYER_ORDER == "choose"
  chosen_player = set_player_order
end

chosen_player == "computer" ? (computer_and_assigned_marker, player_and_assigned_marker = ["X", "O"]) : (player_and_assigned_marker, computer_and_assigned_marker = ["X", "O"]) 





def detect_winner(brd, current_player)
  binding.pry
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X" && PLAYER_ORDER == "player"
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "O" && PLAYER_ORDER == "player"
      return "Computer"
    end
  end
  nil
end


this works for PLAYER_ORDER com and player
                            current player is player and player went first then player is x and com is o 
def detect_winner(brd, current_player)
  binding.pry
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X"
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
      return "Computer"
    end
  end
  nil
end






elsif chosen_player == "player"
 (p_marker, c_marker = ["X", "O"])
end

current_player = p_marker if p_marker == "X"

                           PLAYER_ORDER == "choose"
                              player x
                            x
def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
    # if the winner is x then who is x
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X"
      return "Player" if PLAYER_ORDER == "player"|| PLAYER_ORDER == "choose"
      return "Computer" if PLAYER_ORDER == "computer" || PLAYER_ORDER == "choose"

    # if the winner is O then who is O
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "O"
      return "player" if PLAYER_ORDER == "choose"
      return "Player" if PLAYER_ORDER == "computer" || PLAYER_ORDER == "choose"
      return "Computer" if PLAYER_ORDER == "player" || PLAYER_ORDER == "choose"

    end
  end
  nil
end






def detect_winner(brd, current_player)
  WINNING_LINES.each do |line|
    # if the winner is x then who is x
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X"

     if PLAYER_ORDER == "player"
       return "player"
     elsif PLAYER_ORDER == "computer"
       return "computer"

     elsif PLAYER_ORDER == "choose"
       if chosen_player == "player"
         return "player"
       elsif chosen_player = "computer"
         return "computer"
       end

    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "O"
      if PLAYER_ORDER == "player"
        return "computer"
      elsif PLAYER_ORDER == "computer"
        return "player"
      elsif PLAYER_ORDER = "choose"
        if chosen_player == "player"
          return "Computer"
        elsif chosen_player == "computer"
          return "player" 
        end
      end
    end
  end
end





PLAYER_ORDER = "choose"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

brd = {1=>"X", 2=>"X", 3=>"X", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}

current_player = "O"
chosen_player = "player"

def wt(brd, current_player,chplr)
WINNING_LINES.each do |line|
  # if the winner is x then who is x
  if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X"

   if PLAYER_ORDER == "player"
     return "player"
   elsif PLAYER_ORDER == "computer"
     return "computer"

   elsif PLAYER_ORDER == "choose"
     if chplr == "player"
       return "player"
     elsif chplr == "computer"
       return "computer"
     end

  elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "O"
    if PLAYER_ORDER == "player"
      return "computer"
    elsif PLAYER_ORDER == "computer"
      return "player"

    elsif PLAYER_ORDER == "choose"
      if chplr == "player"
        return "Computer"
      elsif chplr == "computer"
        return "player" 
      end
    end
  end
end
end



wt(brd, current_player,chosen_player)


PLAYER_ORDER == "player" this makes player X and first
PLAYER_ORDER == "computer" this makes computer x and first
PLAYER_ORDER == "choose"


def detect_winner(brd, current_player)

  winning array = WINNING_LINES.each do |line|

    if winning array.first == x


  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X"
      return "Player" if PLAYER_ORDER == "player"
      return "Computer" if PLAYER_ORDER == "computer"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "O"
      return "Player" if PLAYER_ORDER == "computer"
      return "Computer" if PLAYER_ORDER == "player"

    end
  end
  nil
end



def detect_winner(brd, current_player)

  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "X"
      return "Player" if PLAYER_ORDER == "player"
      return "Computer" if PLAYER_ORDER == "computer"
    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 && current_player == "O"
      return "Player" if PLAYER_ORDER == "computer"
      return "Computer" if PLAYER_ORDER == "player"
    end
  end
  nil
end

winner_when_player_order_is_chosen(brd,current_player) if PLAYER_ORDER == "choose"




***************************************************************************************************************************

require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
#PLAYER_ORDER = "player"
#PLAYER_ORDER = "computer"

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

#  if PLAYER_ORDER == "computer"
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





prompt 
 player? PLAYER_ORDER = "player" : PLAYER_ORDER = "computer"


def set_player_order 
  answer = ""
  loop do # validate input
  puts "Who is first, player or computer?"
    answer = gets.chomp
    answer == "player"? 
    break if answer == "player" || answer == "computer"
    "Please enter (player) or (computer)."
  end
  answer
end


PLAYER_ORDER = "player"

PLAYER_ONE_MARKER = "X"
PLAYER_TWO_MARKER = "O"


player = nil
computer = nil



def set_order(player, computer)
puts "who is first player or computer"
answer = gets.chomp
  player, computer = PLAYER_ONE_MARKER PLAYER_TWO_MARKER if  answer == "player" 
end 
player  computer 
player is first


player, computer, = setorder




****************************************************************************************************





P_ONE_MARKER = "X"
P_TWO_MARKER = "O"

prompt "Who is first? player or computer"
# player 
player_order = gets.chomp
player, computer = P_ONE_MARKER, P_TWO_MARKER if player_order == "player"
computer, player = P_ONE_MARKER, P_TWO_MARKER if player_order == "computer"

player 
=> "X"
computer
=> "O"

player == "X" ? current_player = player : current_player = computer

                           "X" # local variable computer or player 
def place_piece!(brd, current_player)
  player_places_piece!(brd, current_player) if current_player == P_ONE_MARKER
  computer_places_piece!(brd, current_player) if current_player == P_TWO_MARKER
end

                                # local variable player 
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

                            x               "player"
                            o               "player"
                            x               "computer"
                            o               "computer"
def detect_winner(brd, current_player, player_order)
  
  the_winning_line = WINNING_LINES.select do |line| #                           "X"
    brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
  
  end 

  if the_winning_line.empty?
    return
  else
    if player_order == "player" && current_player == P_ONE_MARKER #(X)
      return "Player"
    elsif player_order == "computer" && current_player == P_TWO_MARKER #(X) 
      return "Player"
    end
  end
  "Computer"
end












 #                              x                    x
  if the_winning_line.first == "X" || the_winning_line.first == "O" && player_order == "player"
    return "Player"
  end
  "Computer"
end








    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 &&
          current_player == "O"
      return "Player" if PLAYER_ORDER == "computer"
      return "Computer" if PLAYER_ORDER == "player"

    end
  end
  nil
end




***********************************************************************************************************

P_ONE_MARKER = {player => "X", computer => "X"}
P_TWO_MARKER = {player => "O", computer => "O"}

prompt "Who is first? player or computer"
# player 
answer = gets.chomp 
# player
if answer == "player"
  player = P_ONE_MARKER[player]
  computer = P_TWO_MARKER[computer] 
elsif answer == "computer"
  computer = P_ONE_MARKER[computer]
  player = P_TWO_MARKER[player]
end

  
player 
=> "X"
computer
=> "O"

player == "X" ? current_player = player : current_player = computer

                           "X" # local variable computer or player 
def place_piece!(brd, current_player)
  player_places_piece!(brd, current_player) if current_player == P_ONE_MARKER
  computer_places_piece!(brd, current_player) if current_player == P_TWO_MARKER
end

                                # local variable player 
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



player 
=> "X"
computer
=> "O"

P_ONE_MARKER = {player => "X", computer => "X"}
P_TWO_MARKER = {player => "O", computer => "O"}




def detect_winner(brd, current_player, player_one, player_two)


  WINNING_LINES.select do |line|                            "X"
    brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
  end 

  => ["X", "X", "X"]



["X", "X", "X"].first == P_ONE_MARKER





      return "Player" if current_player == P_ONE_MARKER
      return "Computer" if current_player == P_TWO_MARKER
    end








    elsif brd.values_at(line[0], line[1], line[2]).count(current_player) == 3 &&
          current_player == "O"
      return "Player" if PLAYER_ORDER == "computer"
      return "Computer" if PLAYER_ORDER == "player"

    end
  end
  nil
end


def detect_winner(brd, current_player, player_order)
  
  the_winning_line = WINNING_LINES.select do |line| #                           "X"
    brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
  
  end 

  if the_winning_line.empty?
    return
  else
    if player_order == "player" && current_player == P_ONE_MARKER #(X)
      return "Player"
    elsif player_order == "computer" && current_player == P_TWO_MARKER #(X) 
      return "Player"
    end
  end
  "Computer"
end








prompt "Who is first? player or computer"
# player 
player_order = gets.chomp
player, computer = P_ONE_MARKER, P_TWO_MARKER if player_order == "player"
computer, player = P_ONE_MARKER, P_TWO_MARKER if player_order == "computer"

player == "X" ? current_player = player : current_player = computer








player                      x
                            o
def place_piece!(brd, current_player)
  if current_player == "X" and player_order == "player"
    player_places_piece!(brd, current_player)
  elsif current_player == "X" and player_order == "computer"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" and player_order == "player"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" and player_order == "computer"
    computer_places_piece!(brd, current_player)
  end
end




  player_places_piece!(brd, current_player) if current_player == X and the player order is player 
  computer_places_piece!(brd, current_player) if current_player == X and the player order is computer

end















    189: def someone_won?(brd, current_player,player_order)
 => 190:   !!detect_winner(brd, current_player,player_order)
    191: end

[9] pry(main)> detect_winner(brd, current_player,player_order)
=> "Player"
[10] pry(main)> change-prompt none
def someone_won?(brd, current_player,player_order)
  won_or_not_and_who_did_win_array = []
  won_or_not_and_who_did_win_array << !!detect_winner(brd, current_player,player_order)
  won_or_not_and_who_did_win_array << detect_winner(brd, current_player,player_order)
  won_or_not_and_who_did_win_array
end  


=> :someone_won?
detect_winner(brd, current_player,player_order)
=> "Player"
!!detect_winner(brd, current_player,player_order)
=> true
brd
=> {1=>"O", 2=>" ", 3=>"X", 4=>" ", 5=>"O", 6=>"X", 7=>"O", 8=>"X", 9=>"X"}
current_player
=> "X"
player_order
=> "player"
someone_won?(brd, current_player,player_order)
=> [true, "Player"]





def someone_won?(brd, current_player,player_order)
  won_or_not_and_who_did_win_array = []
  won_or_not_and_who_did_win_array << !!detect_winner(brd, current_player,player_order)
  won_or_not_and_who_did_win_array << detect_winner(brd, current_player,player_order)
  won_or_not_and_who_did_win_array
end  

=> [true, "Player"]





prompt "Please choose the player who will go first. Player or Computer?"
player_order = gets.chomp.downcase
if player_order == "player"
  player = P_ONE_MARKER
  computer =  P_TWO_MARKER
elsif player_order == "computer"
  computer = P_ONE_MARKER
  player = P_TWO_MARKER
end
player == "X" ? current_player = player : current_player = computer
prompt "You are #{player}, the computer is #{computer}"












prompt <<-WIN 
"#{someone_won?(board, current_player, player_order)[1]} won that round!"
WIN


prompt <<-WELCOME
Welcome to TTT.

Your opponent is technically the Ruby source code for
this game; however, your opponent will be referred to
as "Computer"

WELCOME




player_wins += 1 if detect_winner(board, current_player, player_order) == "Player"
        computer_wins += 1 if detect_winner(board, current_player, player_order) == "Computer"


if detect_winner(board, current_player, player_order) == "Player"
  player_wins += 1
elsif detect_winner(board, current_player, player_order) == "Computer"
  computer_wins += 1
end





opponent = "X" if xoro == "O"
oponnent = "O" if xoro == "X"



xoro true      true    

xoro == "O" ? opponent = "X" : opponent = "O"

if xoro == "O"
  opponent = "X"
else
  opponent = "O"
end







def block_players_winning_move(brd, xoro)

  opponent = "X" if xoro == "O"
  winning_condition = brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  two_x = WINNING_LINES.select do |line|
    winning_condition
  end
  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end
  square = block_this_square.flatten.find { |sq| brd[sq] == " " }
  square
end


SQUARES = brd.values_at(line[0], line[1], line[2])
***************************************************************************************************************************
***************************************************************************************************************************

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

def block_players_winning_move(brd, xoro)
  opponent = "X" if xoro == "O"
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

def place_piece!(brd, current_player, player_order)
  if current_player == "X" && player_order == "player"
    player_places_piece!(brd, current_player)
  elsif current_player == "X" && player_order == "computer"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "player"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "computer"
    player_places_piece!(brd, current_player)
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





winning_square_arrays = WINNING_LINES.select do |line|
    (brd.values_at(line[0], line[1], line[2]).count(xoro) == 2 &&
     brd.values_at(line[0], line[1], line[2]).count(" ") == 1)
  end

two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end

three_open_squares = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 3
  end

two_open_squares_and_one_o = WINNING_LINES.select do |line|
    (brd.values_at(line[0], line[1], line[2]).count(xoro) == 1 &&
     brd.values_at(line[0], line[1], line[2]).count(" ") == 2)
  end


tie_square = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 1
  end



the_winning_line = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(current_player) == 3
  end


def squares




square = winning_square_arrays.flatten.find { |sq| brd[sq] == " " }
  square

  square = block_this_square.flatten.find { |sq| brd[sq] == " " }
  square

  square = three_open_squares.flatten.find { |sq| brd[sq] == " " }
  square

  square = two_open_squares_and_one_o.flatten.find { |sq| brd[sq] == " " }
  square

  square = tie_square.flatten.find { |sq| brd[sq] == " " }
  square







def find_3_open_squares(brd, _)
  three_open_squares = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(" ") == 3
  end
end
=> [1, 2, 3]


def square(winning_array,brd)
  winning_array.flatten.find { |sq| brd[sq] == " " }
end
=> 1







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




def players_potential_winning_squares(brd, xoro)
  opponent = "X" if xoro == "O"
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end
end

def block_win_with_this_square(brd,xoro)
   players_potential_winning_squares(brd, xoro).select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end
  square = block_this_square.flatten.find { |sq| brd[sq] == " " }
  square
end


def computer_places_piece!(brd, xoro)
  if winning_move(brd, xoro).class == Integer
    brd[winning_move(brd, xoro)] = xoro
  elsif block_win_with_this_square(brd,xoro).class == Integer
    brd[block_win_with_this_square(brd,xoro)] = xoro
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


def block_players_winning_move(brd, xoro)
  opponent = "X" if xoro == "O"
  two_x = WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end
  block_this_square = two_x.select do |subarr|
    brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
  end
  square = block_this_square.flatten.find { |sq| brd[sq] == " " }
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



def return_sqare_to_mark_with_parameters_for_the_xoro(my_marker, player_marker,empty_square, board)
WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end


def player_one_squares(brd)
  brd.keys.select { |num| brd[num] == P_ONE_MARKER }  
end  

def player_two_squares(brd)
  brd.keys.select { |num| brd[num] == P_TWO_MARKER }  
end  


***************************************************************************************************

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }        
end    
=> :empty_squares

def player_one_squares(brd)
  brd.keys.select { |num| brd[num] == P_ONE_MARKER }        
end  
=> :player_one_squares

def player_two_squares(brd)
  brd.keys.select { |num| brd[num] == P_TWO_MARKER }        
end   
=> :player_two_squares

empty_squares(brd)
=> [1, 2, 7, 8, 9]
player_one_squares(brd)
=> [4, 5]
player_two_squares(brd)
=> [3, 6]



WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]

def win(brd,xoro)
square = WINNING_LINES.select { |arr|arr.include?(p_one_squares(brd)) }





def winning_move(brd, xoro)
  winning_square_arrays = WINNING_LINES.select do |line|
    (brd.values_at(line[0], line[1], line[2]).count(xoro) == 2 &&
     brd.values_at(line[0], line[1], line[2]).count(" ") == 1)
  end
  square = winning_square_arrays.flatten.find { |sq| brd[sq] == " " }
  square
end






                                            x
def players_potential_winning_squares(brd, xoro)
              x 
  if xoro == "O"
    opponent = "X"
  end            x    
  elsif xoro == "X"
    oponent = "O"
  end
  WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end
end



it can come in as x or o,





def players_potential_winning_squares(brd, xoro)
  if xoro == "O"
    opponent = "X"
  end
  elsif xoro == "X"
    oponent = "O"
  end
  WINNING_LINES.select do |line|
    brd.values_at(line[0], line[1], line[2]).count(opponent) == 2
  end
end



P_ONE_MARKER = "X"
P_TWO_MARKER = "O"
































diagnostics_with_pry.rb:136:1: C: Metrics/AbcSize: Assignment Branch Condition size for computer_places_piece! is too high. [24.78/18]  (http://c2.com/cgi/wiki?AbcMetric)
def computer_places_piece!(brd, xoro)
^^^

1. Add one to the assignment count for each occurrence of an assignment operator, excluding constant declarations:
= *= /= %= += <<= >>= &= |= ^= >>>=

2. Add one to the assignment count for each occurrence of an increment or decrement operator (prefix or postfix):
 ++ --

3. Add one to the branch count for each function call or class method call.

4. Add one to the branch count for each occurrence of the new operator.

5. Add one to the condition count for each use of a conditional operator:
 == != <= >= < >

6. Add one to the condition count for each use of the following keywords:
 else case default try catch ?

7. Add one to the condition count for each unary conditional expression.
! before true !true
- before 5   -5

Figure 4 – ABC Counting Rules for Java 



Assignment -- an explicit transfer of data into a variable,
= *= /= %= += <<= >>= &= |= ^= >>>= ++ --

Branch 
-- an explicit forward program branch out of scope 
-- a function call, class method call, or new operator

Condition 
-- a logical/Boolean test == != <= >= < > else case default try catch ? and unary conditionals.


A scalar ABC size value (or "aggregate magnitude") is computed as:
       |ABC| = sqrt((A*A)+(B*B)+(C*C))



Metrics/AbcSize:
  Description: >-
                 A calculated magnitude based on number of assignments,
                 branches, and conditions.
Max: 18

def computer_places_piece!(brd, xoro)
  if winning_move(brd, xoro).class == Integer                              # 1 method definition  1 condition
    brd[winning_move(brd, xoro)] = xoro                                    # 1 assignment
  elsif block_win_with_this_square(brd, xoro).class == Integer             # 1 method definition  1 condition
    brd[block_win_with_this_square(brd, xoro)] = xoro                      # 1 method definition  1 assignment
  elsif brd[5] == " "                                                      # 1 condition
    brd[5] = xoro                                                          # 1 assignment
  elsif find_3_open_squares(brd, xoro).class == Integer && xoro == "O"     # 1 method definition  2 conditions
    brd[find_3_open_squares(brd, xoro)] = xoro                             # 1 method definition  1 assignment
  elsif find_two_open_squares(brd, xoro).class == Integer                  # 1 method definition  1 condition
    brd[find_two_open_squares(brd, xoro)] = xoro                           # 1 method definition  1 assignment
  elsif mark_tie_square(brd).class == Integer                              # 1 method definition  1 condition
    brd[mark_tie_square(brd)] = xoro                                       # 1 method definition  1 assignment
  end                                                                      # 12                    10
  brd                                                    # total occurrences              22
end                                                      # Rubocop max                    18





split into offense/defense and ai logic


look for a win
  take it if found
look for a block
  block if found
nil

this will update the values in the brd hash / marks a square brd[] = "X"

def computer_offense_defense!(brd, xoro)
  if winning_move(brd, xoro).class == Integer                              # 1 method definition  1 condition
    brd[winning_move(brd, xoro)] = xoro                                    # 1 assignment
  elsif block_win_with_this_square(brd, xoro).class == Integer             # 1 method definition  1 condition
    brd[block_win_with_this_square(brd, xoro)] = xoro                      # 1 method definition  1 assignment
  end                                                                      # 4                    3
end                                                     # total occuuences              7


brd = {1=>"X", 2=>"X", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}



look for 3 open squares
  take the first square of the line if found
look for 2 open squares
  take the next square after the first one if found
mark the tie square 

this will update the values in the brd hash / marks a square brd[] = "X"

def computer_ai_logic! (brd, xoro)
  elsif brd[5] == " "                                                      # 1 condition
    brd[5] = xoro                                                          # 1 assignment
  elsif find_3_open_squares(brd, xoro).class == Integer && xoro == "O"     # 1 method definition  2 conditions
    brd[find_3_open_squares(brd, xoro)] = xoro                             # 1 method definition  1 assignment
  elsif find_two_open_squares(brd, xoro).class == Integer                  # 1 method definition  1 condition
    brd[find_two_open_squares(brd, xoro)] = xoro                           # 1 method definition  1 assignment
  elsif mark_tie_square(brd).class == Integer                              # 1 method definition  1 condition
    brd[mark_tie_square(brd)] = xoro                                       # 1 method definition  1 assignment
  end                                                                      # 8                    7
  brd                                                    # total occurrences              15
end

is the return value used or is the hash updated to the appropriate value then the method exits?

return value is not used


def computer_places_piece!(brd, xoro)
  computer_offense_defense!(brd, xoro) # will this just run and return nil if the hash doesnot update?
                                       # 
  computer_ai_logic! (brd, xoro)
end







def computer_offense_defense!(brd, xoro)
  if winning_move(brd, xoro).class == Integer
    brd[winning_move(brd, xoro)] = xoro
  elsif block_win_with_this_square(brd, xoro).class == Integer
    brd[block_win_with_this_square(brd, xoro)] = xoro
  end
end

def computer_ai_logic! (brd, xoro)
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

def computer_places_piece!(brd, xoro)
  computer_offense_defense!(brd, xoro)
  computer_ai_logic! (brd, xoro)
end






















diagnostics_with_pry.rb:136:1: C: Metrics/CyclomaticComplexity: Cyclomatic complexity for computer_places_piece! is too high. [8/6] 

The cyclomatic complexity is the number of linearly independent paths through a method. 
6






diagnostics_with_pry.rb:136:1: C: Metrics/PerceivedComplexity: Perceived complexity for computer_places_piece! is too high. [9/7] 
def computer_places_piece!(brd, xoro)
^^^
This cop tries to produce a complexity score thats a measure of the complexity the reader experiences when looking at a method. For that reason it considers when nodes as
something that doesnt add as much complexity as an if or a &&. Except if its one of those special case/when constructs where theres no expression after case. Then the cop
treats it as an if/elsif/elsif... and lets all the when nodes count. In contrast to the CyclomaticComplexity cop, this cop considers else nodes as adding complexity.

def my_method                   # 1
  if cond                       # 1
    case var                    # 2 (0.8 + 4 * 0.2, rounded)
    when 1 then func_one
    when 2 then func_two
    when 3 then func_three
    when 4..10 then func_other
    end
  else                          # 1
    do_something until a && b   # 2
  end                           # ===
end                             # 7 complexity points

Max 7 Integer

















Size is computed by counting the number of assignments, branches and conditions for a section of code. 

Assignment -- an explicit transfer of data into a variable, e.g. = *= /= %= += <<= >>= &= |= ^= >>>= ++ --
Branch -- an explicit forward program branch out of scope -- a function call, class method call, or new operator
Condition -- a logical/Boolean test, == != <= >= < > else case default try catch ? and unary conditionals.



def computer_places_piece!(brd, xoro)
  if winning_move(brd, xoro).class == Integer
    brd[winning_move(brd, xoro)] = xoro
  elsif block_win_with_this_square(brd, xoro).class == Integer
    brd[block_win_with_this_square(brd, xoro)] = xoro
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








diagnostics_with_pry.rb:153:1: C: Metrics/CyclomaticComplexity: Cyclomatic complexity for place_piece! is too high. [9/6] 
def place_piece!(brd, current_player, player_order)
^^^
diagnostics_with_pry.rb:153:1: C: Metrics/PerceivedComplexity: Perceived complexity for place_piece! is too high. [10/7] 
def place_piece!(brd, current_player, player_order)



def place_piece!(brd, current_player, player_order)
  if current_player == "X" && player_order == "player"
    player_places_piece!(brd, current_player)
  elsif current_player == "X" && player_order == "computer"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "player"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "computer"
    player_places_piece!(brd, current_player)
  end
end





diagnostics_with_pry.rb:136:1: C: Metrics/PerceivedComplexity: Perceived complexity for computer_places_piece! is too high. [9/7] 
def computer_places_piece!(brd, xoro)
^^^
This cop tries to produce a complexity score thats a measure of the complexity the reader experiences when looking at a method. For that reason it considers when nodes as
something that doesnt add as much complexity as an if or a &&. Except if its one of those special case/when constructs where theres no expression after case. Then the cop
treats it as an if/elsif/elsif... and lets all the when nodes count. In contrast to the CyclomaticComplexity cop, this cop considers else nodes as adding complexity.


def my_method                   # 1
  if cond                       # 1
    case var                    # 2 (0.8 + 4 * 0.2, rounded)
    when 1 then func_one
    when 2 then func_two
    when 3 then func_three
    when 4..10 then func_other
    end
  else                          # 1
    do_something until a && b   # 2
  end                           # ===
end                             # 7 complexity points

Max 7 Integer








def place_piece!(brd, current_player, player_order)          # 1
  if current_player == "X" && player_order == "player"       # 3
    player_places_piece!(brd, current_player)                # 1
  elsif current_player == "X" && player_order == "computer"  # 4
    computer_places_piece!(brd, current_player)              # 1
  elsif current_player == "O" && player_order == "player"    # 4
    computer_places_piece!(brd, current_player)              # 1
  elsif current_player == "O" && player_order == "computer"  # 4
    player_places_piece!(brd, current_player)
  end                                                       # 19
end



def place_piece!(brd, current_player, player_order)
  if current_player == "X" && player_order == "player"
    player_places_piece!(brd, current_player)
  elsif current_player == "X" && player_order == "computer"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "player"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "computer"
    player_places_piece!(brd, current_player)
  end
end

player_order_logic = { 
                      player_places_piece!(brd, current_player) if current_player == "X" && player_order == "player" 
                      computer_places_piece!(brd, current_player) if current_player == "X" && player_order == "computer"
                      computer_places_piece!(brd, current_player) if current_player == "O" && player_order == "player"
                      player_places_piece!(brd, current_player) if current_player == "O" && player_order == "computer"

  end}


player_order_logic = { 
                      players_turn => [current_player == "X" && player_order == "player"]
                      computers_turn => [ current_player == "X" && player_order == "computer"
                       if current_player == "O" && player_order == "player"
                       if current_player == "O" && player_order == "computer"

  end}

4 possible outcomes of the player order



players_turn_logic 



elsif player_order == "player" && current_player == P_ONE_MARKER
    return "Player"
  elsif player_order == "computer" && current_player == P_TWO_MARKER
    return "Player"





case 
when players_turn
  player_places_piece!(brd, current_player)
when computers_turn
  computer_places_piece!(brd, current_player)
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








                          x    o         player 
def place_piece!(brd, current_player, player_order)
  if current_player == "X" && player_order == "player"
    player_places_piece!(brd, current_player)
  elsif current_player == "X" && player_order == "computer"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "player"
    computer_places_piece!(brd, current_player)
  elsif current_player == "O" && player_order == "computer"
    player_places_piece!(brd, current_player)
  end
end




                            O           computer   
def place_piece!(brd, current_player, player_order)
  if player_order == "player" && current_player == P_ONE_MARKER # X
    player_places_piece!(brd, current_player)
    return
  elsif player_order == "computer" && current_player == P_TWO_MARKER
    player_places_piece!(brd, current_player)
    return
  end
  computer_places_piece!(brd, current_player)
end









current_player == "X" && player_order


                     x or o        player or computer
place_piece!(brd, current_player, player_order)

        "X" or "O"
case player_order
when "player"
  how do I know whos turn it is


13579 thats the same as player order 
2468
player order to actually determine the order

player order and thecurrent player and outputs a value?





CAR_TYPES = {
  foo_type: ['honda', 'acura', 'mercedes'],
  bar_type: ['toyota', 'lexus']
  # More...
}
@type_for_name = {}
CAR_TYPES.each { |type, names| names.each { |name| @type_for_name[type] = name } }

case @type_for_name[car]
when :foo_type
  # do foo things
when :bar_type
  # do bar things
end




def computer_places_piece!(brd, xoro)
  binding.pry
  if computer_offense_defense!(brd, xoro).class == Integer

      def computer_offense_defense!(brd, xoro)
        if winning_move(brd, xoro).class == Integer




            def winning_move(brd, xoro)
              winning_square_arrays = WINNING_LINES.select do |line|
                (brd.values_at(line[0], line[1], line[2]).count(xoro) == 2 &&
                 brd.values_at(line[0], line[1], line[2]).count(" ") == 1)
              end
              square = winning_square_arrays.flatten.find { |sq| brd[sq] == " " }
              square
            end
            {1=>"O", 2=>"O", 3=>"X", 4=>" ", 5=>"X", 6=>" ", 7=>" ", 8=>" ", 9=>"X"}

             => nil
                   never executed => brd[winning_move(brd, xoro)] = xoro
        elsif block_win_with_this_square(brd, xoro).class == Integer




              def block_win_with_this_square(brd, xoro)
                block_square = players_potential_winning_squares(brd, xoro).select do |subarr|
                  brd.values_at(subarr[0], subarr[1], subarr[2]).count(xoro) == 0
                end
                square = block_square.flatten.find { |sq| brd[sq] == " " }
                square
              end

              block_win_with_this_square(brd, xoro)
              => 6 
              => execute 

          brd[block_win_with_this_square(brd, xoro)] = xoro
          {1=>"O", 2=>"O", 3=>"X", 4=>" ", 5=>"X", 6=>"O", 7=>" ", 8=>" ", 9=>"X"}
          the players win has been blocked with 6 being marked
the program SHOULD BE EXITING computer_places_piece here because square 6 was marked 
        end
      end






    computer_offense_defense!(brd, xoro)
    return
  end
  computer_ai_logic!(brd, xoro)
end




def computer_places_piece!(brd, xoro)
  binding.pry
  if computer_offense_defense!(brd, xoro).class == Integer

    computer_offense_defense!(brd, xoro)
    return
  end
  computer_ai_logic!(brd, xoro)
end









def computer_places_piece!(brd, xoro)
  binding.pry
  if computer_offense_defense!(brd, xoro).class == Integer # square 6 is already marked here
    binding.pry # is square 6 marked here?
    computer_offense_defense!(brd, xoro)
    binding.pry # is square 6 marked here? => yes
    # {1=>"O", 2=>"O", 3=>"X", 4=>" ", 5=>"X", 6=>"O", 7=>" ", 8=>" ", 9=>"X"}
    # if square 6 is marked here then next line maybe?
    return if computer_offense_defense!(brd, xoro).class == Integer
    # why is this not returning ? because the if statement executed BEFORE square 6 was marked?
    # so line 159 returns false?
    #return
  end
  binding.pry
  # the computer is entering this methd because its the last line of the computerplaces piece!?
  # why is computeroffense not causing computer_places_piece to exit?
  computer_ai_logic!(brd, xoro)
end






separate the marking of thesquare from the conditionsl check





def computer_offense_defense!(brd, xoro)
  # return the square to mark
  if winning_move(brd, xoro).class == Integer
    return winning_move(brd, xoro)
  elsif block_win_with_this_square(brd, xoro).class == Integer
    return block_win_with_this_square(brd, xoro)
  end
end # => square to block 

def computer_ai_logic!(brd, xoro)
  # return the square to mark
  if brd[5] == " "
    return 5
  elsif find_3_open_squares(brd, xoro).class == Integer && xoro == "O"
    return find_3_open_squares(brd, xoro)
  elsif find_two_open_squares(brd, xoro).class == Integer
    return find_two_open_squares(brd, xoro)
  elsif mark_tie_square(brd).class == Integer
    return mark_tie_square(brd)
  end
  brd
end # => square to mark 


def computer_places_piece!(brd, xoro)
  binding.pry
  if computer_offense_defense!(brd, xoro).class == Integer # square 6 is already marked here
    # mark square then return
    brd[computer_offense_defense(brd, xoro)] = xoro
    binding.pry # is square 6 marked here?
    # {1=>"O", 2=>"O", 3=>"X", 4=>" ", 5=>"X", 6=>"O", 7=>" ", 8=>" ", 9=>"X"}
    # if square 6 is marked here then next line should return
    return 
  elsif
    # this should only execute if the first conditional is not met
    computer_ai_logic!(brd, xoro).class == Integer
    brd[computer_ai_logic!(brd, xoro)] = xoro
  end
  brd
end




brd[block_win_with_this_square(brd, xoro)] = xoro







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



def computer_offense_defense!(brd, xoro)
  if winning_move(brd, xoro).class == Integer
    winning_move(brd, xoro)
  elsif block_win_with_this_square(brd, xoro).class == Integer
    block_win_with_this_square(brd, xoro)
  end
end

def computer_ai_logic!(brd, xoro)
  if brd[5] == " "
    return 5
  elsif find_3_open_squares(brd, xoro).class == Integer && xoro == "O"
    return find_3_open_squares(brd, xoro)
  elsif find_two_open_squares(brd, xoro).class == Integer
    return find_two_open_squares(brd, xoro)
  elsif mark_tie_square(brd).class == Integer
    return mark_tie_square(brd)
  end
  brd
end

def computer_places_piece!(brd, xoro)
  if computer_offense_defense!(brd, xoro).class == Integer
    brd[computer_offense_defense!(brd, xoro)] = xoro
    return
  elsif computer_ai_logic!(brd, xoro).class == Integer
    brd[computer_ai_logic!(brd, xoro)] = xoro
  end
  brd
end




block for a future win with player staggered squares
dont refrerence the board for this, reference the sequence 
after the player places the second piece 

check for win
check for immediate block
  if player_sequence_counter.size == 2
check for BLOCK_THIS_SEQUENCE player sequence # not the board.
  if BLOCK_THIS_SEQUENCE.select{ |blk_seq| blk_seq == plyr_seq_recorder }
    brd[prediction_block] = xoro
check for 5 open
check for 3 squares open
check for 2 squares open
place tie 

BLOCK_THIS_EXACT_SEQUENCE = [
                             [1,6] # 3 
                             [2,6] # 3 
                             [5,9] # 3 
                             [7,6] # 9
                             [8,6] # 9
                             [6,1] # 9
                             [6,3] # 9
                            ]

initialize when board is initialized and reset when board is reset/initialized player_sequence_recorder.clear

player_sequence_recorder = []

player_sequence_recorder << square


player_sequence_recorder = []

player_sequence_recorder = []
                                                [] << Integer => mutate and return 
def player_places_piece!(brd, current_player, player_sequence_recorder)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = current_player
  player_sequence_recorder << square
  # player_sequence [1,6] mutated so it does not need to be returned
end

brd hash is updated with the square the player chosen_player
each player choice is appended to player_sequence_recorder 





can i use x, y, z with .select to compare only index 0 and 1  of a two element array with a 3 element array

then return index 2

player_sequence_recorder = [1,6]
block_sequence = [1,6,3]

disrupt_player_strategy[2]
=> 3

def one_step_ahead_of_player(player_sequece_recorder)
                                [1,6,3]
  disrupt_player_strategy = BLOCK_THIS_SEQUENCE.select do |blk_seq| 
    blk_seq == plyr_seq_recorder 

  disrupt_player_strategy = BLOCK_THIS_SEQUENCE.select do |x,y,z| 
    x == plyr_seq_recorder[0]
    y == plyr_seq_recorder[1]
  end



player_sequence_recorder = [1,6]
block_sequence = [1,6,3]

disrupt_player_strategy[2]
=> 3





brd[one_step_ahead_of_player(player_sequence_recorder)] = xoro




check for win
check for immediate block
  if player_sequence_counter.size == 2
check for BLOCK_THIS_SEQUENCE player sequence # not the board.
  if BLOCK_THIS_SEQUENCE.select{ |blk_seq| blk_seq == plyr_seq_recorder }
    brd[prediction_block] = xoro
check for 5 open
check for 3 squares open
check for 2 squares open
place tie 









def one_step_ahead_of_player(player_sequece_recorder)

player_sequence [1,6]

case player_sequence_recorder # compress with when || || then 3
  when [1,6] # block 3
    3
  when [2,6]
    3
  when [5,9]
    3
  when [7,6]
    9
  when [8,6]
    9
  when [6,1]
    9
  when [6,3]
    9
else
  nil





BLOCK_THIS_EXACT_SEQUENCE = [
                             [1,6] # 3 
                             [2,6] # 3 
                             [5,9] # 3 
                             [7,6] # 9
                             [8,6] # 9
                             [6,1] # 9
                             [6,3] # 9
                            ]


BLOCK_THIS_EXACT_SEQUENCE = [
                             [1,6,3] # 3 
                             [2,6,3] # 3 
                             [5,9,3] # 3 
                             [7,6,9] # 9
                             [8,6,9] # 9
                             [6,1,9] # 9
                             [6,3,9] # 9
                            ]

player_sequence_recorder = []
player_sequence_recorder.clear # after each round when board is reset




brd[one_step_ahead_of_player(player_sequence_recorder)] = xoro






                                            # player_sequence_recorder = []  << Integer
                                            # => mutated
def player_places_piece!(brd, current_player, player_sequence_recorder)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  # update hash so no need to return brd[square] = current_player 
  brd[square] = current_player

  # player_sequence [1,6] 
  # => mutated so no need to return
  player_sequence_recorder << square
end

# brd hash is updated with the square the player chosen_player
{1=>"X", 2=>" ", 3=>" ", 4=>" ", 5=>"O", 6=>"X", 7=>" ", 8=>" ", 9=>" "}

# player_sequence_recorder is updated
player_sequence_recorder 
=> [1,6]




check for win
check for immediate block
  if player_sequence_counter.size == 2
check for BLOCK_THIS_SEQUENCE player sequence # not the board.
  if BLOCK_THIS_SEQUENCE.select{ |blk_seq| blk_seq == plyr_seq_recorder }
    brd[prediction_block] = xoro
check for 5 open
check for 3 squares open
check for 2 squares open
place tie 


                                   [1,6]
def one_step_ahead_of_player(player_sequece_recorder)
  disrupt_player_strategy = BLOCK_THIS_SEQUENCE.select do |blk_seq| 
    blk_seq == plyr_seq_recorder 
  end entire_array
  => [1,6]
  or entire array
  => [1,6,3]
if BLOCK_THIS_SEQUENCE has the entire sequence 1,6,3 then i can return the whole array
  1,6,3 then use the last element instead of doing a case statement

  => [1,6,3]
 return  disrupt_player_strategy.last
end

=> 3







def computer_places_piece!(brd, xoro)
  if computer_offense_defense!(brd, xoro).class == Integer
    brd[computer_offense_defense!(brd, xoro)] = xoro
    return
  elsif one_step_ahead_of_player(player_sequence_recorder)] == Integer
    brd[one_step_ahead_of_player(player_sequence_recorder)] = xoro
    return
  elsif computer_ai_logic!(brd, xoro).class == Integer
    brd[computer_ai_logic!(brd, xoro)] = xoro
  end
  brd
end














BLOCK_THIS_EXACT_SEQUENCE = [
                             [1,6,3], # 3 
                             [2,6,3], # 3 
                             [5,9,3], # 3 
                             [7,6,9], # 9
                             [8,6,9], # 9
                             [6,1,9], # 9
                             [6,3,9] # 9
                            ]


initialize board
player_sequence_recorder = []
player_sequence_recorder.clear # after each round when board is reset


def one_step_ahead_of_player(player_sequence_recorder)
  disrupt_player_strategy = BLOCK_THIS_EXACT_SEQUENCE.select do |blk_seq|
    blk_seq[0..1] == player_sequence_recorder[0..1]
  end
  # disrupt_player_strategy => [1,6,3]
  disrupt_player_strategy[0][2]
end

def computer_places_piece!(brd, xoro)
  if computer_offense_defense!(brd, xoro).class == Integer
    brd[computer_offense_defense!(brd, xoro)] = xoro
    return
  elsif one_step_ahead_of_player(player_sequence_recorder)] == Integer
    brd[one_step_ahead_of_player(player_sequence_recorder)] = xoro
    return
  elsif computer_ai_logic!(brd, xoro).class == Integer
    brd[computer_ai_logic!(brd, xoro)] = xoro
  end
  brd
end

def player_places_piece!(brd, current_player, player_sequence_recorder)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  brd[square] = current_player
  player_sequence_recorder << square
end













# brd hash is updated with the square the player chosen_player
{1=>"X", 2=>" ", 3=>" ", 4=>" ", 5=>"O", 6=>"X", 7=>" ", 8=>" ", 9=>" "}

# player_sequence_recorder is updated
player_sequence_recorder 
=> [1,6]




































                                            # player_sequence_recorder = []  << Integer
                                            # => mutated
def player_places_piece!(brd, current_player, player_sequence_recorder)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end
  # update hash so no need to return brd[square] = current_player 
  brd[square] = current_player

  # players first choice is 1         player_sequence_recorder << 1 
  # => mutated so no need to return
  player_sequence_recorder << square
end

# brd hash is updated with the square the player chosen_player
{1=>"X", 2=>" ", 3=>" ", 4=>" ", 5=>"O", 6=>"X", 7=>" ", 8=>" ", 9=>" "}

# player_sequence_recorder is updated
player_sequence_recorder 
=> [1,6]



























  disrupt_player_strategy = BLOCK_THIS_SEQUENCE.select do |x,y,z| 
    x == plyr_seq_recorder[0]
    y == plyr_seq_recorder[1]
  end



player_sequence_recorder = [1,6]
block_sequence = [1,6,3]

disrupt_player_strategy[2]
=> 3





brd[one_step_ahead_of_player(player_sequence_recorder)] = xoro












brd[one_step_ahead_of_player(player_sequence_recorder)] = xoro







https://github.com/HOT-Media/programming_foundations/blob/master/lesson_6_slightly_larger_programs/tic_tac_toe_bonus_feature_6.rb



[My version of the ttt bonus](https://github.com/HOT-Media/programming_foundations/blob/master/lesson_6_slightly_larger_programs/tic_tac_toe_bonus_feature_6.rb "My version of TTT")







Gameplay
I didn’t see it ever displayed what the game winning score is. 

It would be nice to display to the user at the beginning how many round points one must earn to win the game. 


This a multi-round game where the first player to reach 5 points wins, but that isn’t ever really expressed to the user.


 The score board of overall points updates after each round, but consider including a message informing the user that the game is set up this way at the start of the game so that they know how many points they must reach to win.


The first player to win 5 rounds wins the game.







You might want to allow inputs p for player and c for computer aswell, case insensitive, as this is more user friendly. 



loop do
  prompt "Please choose the player who will go first. Player or Computer?"
  player_order = gets.chomp.downcase
  if player_order == "player" || player_order == "p"
    player_order = "player"
    player = P_ONE_MARKER
    computer = P_TWO_MARKER
    break
  elsif player_order == "computer" || player_order == "c"
    player_order = "player"
    computer = P_ONE_MARKER
    player = P_TWO_MARKER
    break
  else
    prompt "Valid answers are: player or computer"
  end
end
















Same goes with play again prompt. You could allow y and n as correct inputs.

Source code
You reference 5 several times in your code. Imagine if you later wanted to change the number of points that a player must reach to win the game. Or that someone else reading your code must determine what the number’s significance is. For improved readability and easier maintenance, I recommend using a constant instead.



Clearing screen with code system('clear') || system('cls') would also allow it to work on Windows systems.


I didn't understand from the name of this method what it does one_step_ahead_of_player ?

Make sure to remove binding.pry from production code. Your's is commented out so remove that line.

Your alternate_player method could be written like this to add simplicitys:

def alternate_player(player)
  player == "O" ? "X" : "O"
end


Methods ending with ? should by convention return a boolean. Your method someone_won? returns an array. You could create multiple smaller methods like player_won?, computer_won? and tie?.




player == "X" ? current_player = player : current_player = computer could be written as 

current_player = player == "X" ? player : computer.


You could also separate all the logic for play again into separate method play_again? and you would just add break unless play_again? which reads better.


def play_again?
  answer = nil
  loop do # validation loop 
    puts "Play again? (yes or no)"
    answer = gets.chomp.downcase
    if answer == "no" || answer == "n"
      return false 
    elsif answer == "yes" || answer == "y"
      return true
    else
      puts "Valid answers are yes or no"
    end
  end # end validation loop 
end 


  break play_again? == false





break if play_again? == false


Overall
Nice job, Jeremy. 👍 Review my feedback and try to address some of the issues raised before moving forward.




You might want to allow inputs p for player and c for computer aswell, case insensitive, as this is more user friendly. 













***************************************************************************************
Hi Srdjan,

Thanks for the system('clear') || system('cls') windows addition




I didn't understand from the name of this method what it does one_step_ahead_of_player ?


```

I went one step further with the AI logic. 
I hard coded the Computer's strategy as follows:
1. Take the win if it is possible
2. Check for an immediate block and do so if necessary.
3. Monitor the sequence of squares the player has chosen which will result in a win on the players fourth square placement.

For example: the player's sequence 1,6,3 will result in the player winning with square 2 or 9, and the computer will not be able to block both of the players winning squares, so by blocking 3 immediately after the sequence 1,6 is identified the players winning sequence is disrupted.

4. Check for 5 open
5. Check for 3 open squares
6. Check for 2 open squares
7. Mark the tie square.

I think it is a bit risky to hard code the AI to both win and block; however, I have not been able to beat the computer either when I go first or when the computer does. I'm not saying it is unbeatable, so I am wondering how the AI could be more adaptive for blocking the players winning sequences. 

```ruby


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [7, 5, 3]]
Just as a conditional check is done for a complete  WINNING_LINES 


This is a sequence of squares that will result in a win for the player on the players fourth square placement.
I hard coded the program to block the players future win if a winning sequence detected 


if the player marks square 1, the computer will mark square 5
if the players second square is  2 , computer blocks with 3
or
if the players second square is 4, computer will blocks with 7
  thats pretty straight forward.

Here is where the one step ahead logic comes in:
if the player marks square 1, the computer will mark square 5


the computer is programmed to place pieces in numerical order  based on the winning lines constant
while at the same time it is detecting block thissequence



as soon as the player marks the squares 1,6, 3 , the player can not be prevented from winning 


1,,6,3 will result in a non blockabl 

BLOCK_THIS_EXACT_SEQUENCE = [
  [1, 6, 3],
  [2, 6, 3],
  [5, 9, 3],
  [6, 2, 3],
  [1, 8, 7],
  [8, 1, 7],
  [7, 6, 9],
  [8, 6, 9],
  [6, 1, 9],
  [6, 3, 9],
  [6, 8, 9],
]




def detect_plyr_fourth_sq_win_strategy(plyr_sequence_recorder).class == Integer
  disrupt_player_strategy = BLOCK_THIS_EXACT_SEQUENCE.select do |blk_seq|
    blk_seq[0..1] == plyr_sequence_recorder[0..1]
  end
  return nil if plyr_sequence_recorder.length > 2
  disrupt_player_strategy.flatten.last
end


def computer_places_piece!(brd, xoro, plyr_sequence_recorder)
  # binding.pry
  # sleep 0.75
  if computer_offense_defense!(brd, xoro).class == Integer
    brd[computer_offense_defense!(brd, xoro)] = xoro
    return
  elsif one_step_ahead_of_player(plyr_sequence_recorder).class == Integer
    brd[one_step_ahead_of_player(plyr_sequence_recorder)] = xoro
    return
  elsif computer_ai_logic!(brd, xoro).class == Integer
    brd[computer_ai_logic!(brd, xoro)] = xoro
  end
  brd
end


I didnt understand from the name of this method what it does one_step_ahead_of_player ?








Hi Srdjan,

I addressed the following issues you raised and updated the code:
 the gameplay displays the requirements for winning the game.
 the user input input validation for: player, computer, yes, no now accepts p,c y,n 
 the integer 5 in the code has been replaced with the constant WINNING_SCORE = 5  
 the screen will clear on Windows systems
 the method one_step_ahead_of_player has been renamed to detect_plyr_fourth_sqr_win_seq
 binding.pry has been removed
 alternate_player has been updated for simplicity
 the logic for play again is now in the method play_again?

I especially like the refactored current_player assignment

``ruby 
player == "X" ? current_player = player : current_player = computer 

current_player = player == "X" ? player : computer.
``

Thank's' for the feedback
Jeremy










player == "X" ? current_player = player : current_player = computer



current_player = player == "X" ? player : computer.





evaluating the value of player 

if player == "X" 
  current_player = player 
elsif player == "Y"
  current_player = computer
end


















Methods ending with ? should by convention return a boolean. Your method someone_won? returns an array. You could create multiple smaller methods like player_won?, computer_won? and tie?.

player == "X" ? current_player = player : current_player = computer could be written as current_player = player == "X" ? player : computer.

You could also separate all the logic for play again into separate method play_again? and you would just add break unless play_again? which reads better.

Overall
Nice job, Jeremy. 👍 Review my feedback and try to address some of the issues raised before moving forward.



Thank you very much









