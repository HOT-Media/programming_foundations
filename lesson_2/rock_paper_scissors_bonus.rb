VALID_CHOICES = %w(rock paper scissors lizzard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end
=begin
def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizzard') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper')||
  (first == 'scissors' && second == 'lizzard')||
  (first == 'lizzard' && second == 'spock') ||
  (first == 'lizzard' && second == 'paper') ||
  (first == 'spock' && second == 'scissors') ||
  (first == 'spock' && second == 'rock')  
end
=end

=begin
def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end
=end

loop do
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

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

winning_combinations = 
 {:rock=>["scissors", "lizzard"],
 :paper=>["rock", "spock"],
 :scissors=>["paper", "lizzard"],
 :lizzard=>["spock", "paper"],
 :spock=>["scissors", "rock"]}

if winning_combinations.fetch(choice.to_sym).include?(computer_choice) == true
     puts "You won"     
   else     
     puts "Computer won"    
   end    
=begin
  display_results(choice, computer_choice)
=end


  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
