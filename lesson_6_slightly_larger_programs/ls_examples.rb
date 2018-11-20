WIN_LIMIT = 5         # determines how many rounds are needed to win
FIRST_TURN = 'choose' # determines who goes first, 'player', 'ai' or 'choose'

EMPTY_SQUARE  = ' '
PLAYER_SQUARE = 'X'
AI_SQUARE     = 'O'

WINNING_SETUPS = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9], # along a row
  [1, 4, 7], [2, 5, 8], [3, 6, 9], # down a column
  [1, 5, 9], [3, 5, 7]             # diagonally
]

RANDOM_NAMES = ['Eddie', 'Waylon', 'Justine', 'Angela']

def prompt(msg, sameline = false)
  sameline ? print(">> #{msg}") : puts(">> #{msg}")
end

def clear_screen
  system("clear") || system("cls")
end

def read_player_name
  prompt "Please enter your name: ", true
  name = gets.chomp.strip
  if name.empty?
    name = RANDOM_NAMES.sample
    prompt "Ok, I'm just gonna call you #{name} then."
  else
    prompt "Thanks, #{name}."
  end
  name
end

def determine_first_turn
  prompt "Who should go first?"
  prompt "(Enter 'player', 'ai' or anything else to let me pick): ", true
  first_turn = gets.chomp
  if first_turn == 'player' || first_turn == 'ai'
    first_turn
  else
    ['player', 'ai'].sample
  end
end

def init_board
  (1..9).each_with_object({}) { |key, board| board[key] = EMPTY_SQUARE }
end

# rubocop:disable Metrics/LineLength, Metrics/AbcSize
def display_board(board, state, help = false)
  clear_screen

  if help
    board = (1..9).each_with_object({}) { |key, brd| brd[key] = key.to_s }
  end

  ai_name_string = 'AI'.ljust(state[:name].length)
  puts "╔═══╦═══╦═══╗"
  puts "║ #{board[1]} ║ #{board[2]} ║ #{board[3]} ║   Results"
  puts "╠═══╬═══╬═══╣   ═════════"
  puts "║ #{board[4]} ║ #{board[5]} ║ #{board[6]} ║   (#{PLAYER_SQUARE}) #{state[:name]}  #{state[:player]}"
  puts "╠═══╬═══╬═══╣   (#{AI_SQUARE}) #{ai_name_string}  #{state[:ai]}"
  puts "║ #{board[7]} ║ #{board[8]} ║ #{board[9]} ║"
  puts "╚═══╩═══╩═══╝"
  puts ""
end
# rubocop:enable Metrics/LineLength, Metrics/AbcSize

def joinor(squares, delimiter = ', ', endword = 'or')
  joined_string = ''
  squares.each_with_index do |square, index|
    square = square.to_s
    if index == squares.length - 2
      joined_string << square << ' ' << endword << ' '
    elsif index == squares.length - 1
      joined_string << square
    else
      joined_string << square << delimiter
    end
  end
  joined_string
end

def empty_squares(board)
  board.keys.select { |key| board[key] == EMPTY_SQUARE }
end

def valid_move?(board, square_number)
  board[square_number] == EMPTY_SQUARE
end

def display_help(board, state)
  display_board(board, state, true)
  prompt "Press enter to return to the game view"
  display_board(board, state) if gets
end

def player_move(board, state)
  loop do
    prompt "Choose a square to put your marker on "
    prompt "(#{joinor(empty_squares(board))})"
    prompt "(or type 'help' to see the square numbers): ", true
    input = gets.chomp

    if input == "help"
      display_help(board, state)
      next
    end

    if valid_move?(board, input.to_i)
      board[input.to_i] = PLAYER_SQUARE
      break
    end
    prompt "This is not a valid move!"
  end
end

def change_active_player(state, next_player)
  state[:current_turn] = next_player
end

def near_wins(board, marker)
  squares = []
  WINNING_SETUPS.each do |setup|
    situation = setup.each_with_object({}) { |sqr, obj| obj[sqr] = board[sqr] }
    if situation.values.count(marker) == 2 &&
       situation.values.count(EMPTY_SQUARE) == 1
      squares << situation.key(EMPTY_SQUARE)
    end
  end
  squares
end

def ai_move(board)
  next_move = []
  threats = near_wins(board, PLAYER_SQUARE)
  wins = near_wins(board, AI_SQUARE)

  next_move << wins << threats
  next_move << 5 if valid_move?(board, 5)
  next_move << empty_squares(board).sample

  board[next_move.flatten.first] = AI_SQUARE
end

def turn(board, state)
  if state[:current_turn] == 'player'
    player_move(board, state)
    change_active_player(state, 'ai')
  else
    ai_move(board)
    change_active_player(state, 'player')
  end
end

def winner?(board, marker)
  WINNING_SETUPS.each do |setup|
    return true if setup.all? { |i| board[i] == marker }
  end
  false
end

def board_full?(board)
  empty_squares(board).empty?
end

def state_reset(state)
  state[:player] = 0
  state[:ai] = 0
end

# rubocop:disable Metrics/PerceivedComplexity
def display_result(state, winner)
  if winner == 'player'
    if state[:player] >= WIN_LIMIT
      prompt "You have managed to beat me, #{state[:name]}!"
      prompt "Here's your virtual trophy: Ω"
    else
      prompt "You have won... but only this round."
    end
  elsif winner == 'ai'
    if state[:ai] >= WIN_LIMIT
      prompt "I have managed to beat you #{WIN_LIMIT} times."
      prompt "I therefore declare myself the overall winner."
    else
      prompt "This round goes to me."
    end
  end
end
# rubocop:enable Metrics/PerceivedComplexity

clear_screen
player_name = read_player_name

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
    display_board(board, state)
    turn(board, state)

    if winner?(board, PLAYER_SQUARE)
      state[:player] += 1
      display_board(board, state)
      display_result(state, 'player')
      break
    end

    if winner?(board, AI_SQUARE)
      state[:ai] += 1
      display_board(board, state)
      display_result(state, 'ai')
      break
    end

    if board_full?(board)
      display_board(board, state)
      prompt "It's a tie."
      break
    end

    if state[:player] >= WIN_LIMIT || state[:ai] >= WIN_LIMIT
      state_reset(state)
    end
  end

  prompt "Want to play again? (y/n) ", true
  break if gets.chomp.downcase == 'n'
end

clear_screen
prompt "Thanks for playing and have a nice day!"