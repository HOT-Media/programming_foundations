VALID_CHOICES = %w(rock paper scissors lizzard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

your_score = 0
  computer_score = 0

loop do # continue playing the game until someone wins 5
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join', '}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

winning_combinations = 
 {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}

  if choice == computer_choice
    prompt "It's a tie, no point awarded for this round."
  elsif winning_combinations.fetch(choice.to_sym).include?(computer_choice) == true
    prompt 'You won that round!'
     your_score += 1    
  else     
    prompt 'The computer won that round!'
      computer_score += 1    
  end  


  prompt "Your score is: #{your_score} The computer's score is: #{computer_score}"
puts

  if your_score == 5
    prompt 'You won the game!!'
    break
  elsif computer_score == 5
    prompt 'The computer won the game!!'
    break
  end
 
end # end the play again loop

