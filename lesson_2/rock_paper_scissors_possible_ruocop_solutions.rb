# This is a suggested soulution to the rubocop offenses.
# The syntax is not correct.
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do 

  choice = ''
  loop do
    prompt ("Choose one: #{VALID_CHOICES.join', '}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  you_won = ['rock', 'scissors'],['paper','rock'],['scissors', 'paper']
  computer_won = ['rock', 'paper'],['paper', 'scissors'], ['scissors', 'rock']

  compare_choices = (choice, computer_choice)
  if compare_choices == you_won
    prompt("You Won!") 
  elsif compare_choices == computer_won
    prompt("Computer Won!")
  else
    prompt("It's a tie!") 
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt("Thank you for playing. Good bye!")
