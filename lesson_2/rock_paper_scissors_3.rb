
def prompt(message)
  Kernel.puts("=> #{message}")
end


VALID_CHOICES = ['rock', 'paper', 'scissors']

# How would you use the display_results method differently if it returned a string, as 
# opposed to outputting the string directly?
# 1. remove the calls to the method prompt in the display_results method.

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
        (player == 'paper' && computer == 'rock') ||
        (player == 'scissors' && computer == 'paper')
      "You won!"
    elsif (player == 'rock' && computer == 'paper') ||
           (player == 'paper' && computer == 'scissors') ||
            (player == 'scissors' && computer == 'rock')
    "Computer won!"
    else
      "It's a tie!"
  end
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


  # call the method prompt and pass in the return value of the method
  # display_results(choice, computer_choice))

  prompt(display_results(choice, computer_choice))


  

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt("Thank you for playing. Good bye!")







