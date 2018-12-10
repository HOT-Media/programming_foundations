```ruby
def twenty_one?(hand)
  hand == 21 
end

def bust?(hand)
  hand > 21
end

def dealer_push?(players_hand_value, dealers_hand_value)
  players_hand_value == dealers_hand_value
end





def hit?
  <<HEREDOC 
  "What do you want to do?"
  "Enter hit for another card"
  "Enter stay if you do not want another card"
  HEREDOC

  answer = gets.chomp.downcase
  if answer == "hit" || answer == "h"
    return "deal"
  elsif answer == "stay" || answer == "s"
    "stay"
  else
    puts "Valid responses are hit or stay"
end
=> "deal"

if hit? == "deal"
  deal_to_player(player)
end



end


def play_again?
end

