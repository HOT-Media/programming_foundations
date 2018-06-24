# Ruby has late binding, so the call to prompt in display_results, will not 
# be associated with the actual prompt before  display_results is called.

def test_method
  prompt('test message')
end

# The call to prompt in test_method is raising an exception
# because test_method is being called BEFORE the method
# prompt is defined.

# test_method (NoMethodError)

def prompt(message)
  Kernel.puts("=> #{message}")
end

test_method 
# the test_method works here because test method is called
# AFTER the method prompt is defined.

VALID_CHOICES = ['rock', 'paper', 'scissors']

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
        (player == 'paper' && computer == 'rock') ||
        (player == 'scissors' && computer == 'paper')
      prompt("You won!")
    elsif (player == 'rock' && computer == 'paper') ||
           (player == 'paper' && computer == 'scissors') ||
            (player == 'scissors' && computer == 'rock')
    prompt ("Computer won!")
    else
      prompt("It's a tie!")
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


  display_results(choice, computer_choice)


  

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt("Thank you for playing. Good bye!")







