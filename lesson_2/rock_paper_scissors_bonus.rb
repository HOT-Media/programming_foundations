VALID_CHOICES = %w(rock paper scissors lizard spock)

INVALID_CHOICE = <<~END
That is not a valid choice.
Valid choices are:
#{VALID_CHOICES.join ', '}
The first character of each choice is also accepted.
Note: v is for spock, the human/Vulcan. "
END

WINNING_COMBINATIONS =
  {
    'rock' => ["scissors", "lizard"],
    'paper' => ["rock", "spock"],
    'scissors' => ["paper", "lizard"],
    'lizard' => ["spock", "paper"],
    'spock' => ["scissors", "rock"]
  }

CHOICE_CONVERSION =
  {
    'r' => 'rock',
    'p' => 'paper',
    's' => 'scissors',
    'l' => 'lizard',
    'v' => 'spock'
  }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def convert_choice(str)
  if CHOICE_CONVERSION.key?(str)
    CHOICE_CONVERSION.fetch(str)
  else
    str
  end
end

def clear_screen
  system('clear') || system('cls')
end

your_score = 0
computer_score = 0

clear_screen
prompt("Welcome to Rock Paper Scissors Liazrd Spock.")
puts
prompt("Your choice can be one of the following:
#{VALID_CHOICES.join', '}
The first character of each choice is also accepted.
Note: the single character for spock is v, the human/Vulcan")
loop do # continue playing the game until someone wins 5
  choice = ''

  loop do
    prompt("Enter your choice")
    choice = Kernel.gets().chomp().downcase

    if choice.length == 1
      choice = convert_choice(choice)
    end
    if VALID_CHOICES.include?(choice)
      break
    else
      clear_screen
      prompt INVALID_CHOICE
    end
  end

  if choice.length == 1
    choice = convert_choice(choice)
  end

  computer_choice = VALID_CHOICES.sample

  puts

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")
  puts

  if choice == computer_choice
    puts "It's a tie, no point awarded for this round."
  elsif WINNING_COMBINATIONS.fetch(choice).include?(computer_choice) == true
    puts 'You won that round!'
    your_score += 1
  else
    puts 'The computer won that round!'
    computer_score += 1
  end
  sleep 2

  clear_screen

  puts "
Your score is: #{your_score} The computer's score is: #{computer_score}"
  puts

  if your_score == 5
    puts 'You won the game!!'
    break
  elsif computer_score == 5
    puts 'The computer won the game!!'
    break
  end
end # end the play again loop
