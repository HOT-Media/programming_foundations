```ruby


def display_hands(player, dealer)
puts "#{player[0]}  #{player[1]}"
end


players_hand = [["D", "K"], ["H", "4"]]

dealers_hand = [["?", "0"], ["S", "7"], ["H", "9"]] 

calculate_without_downcard = dealers_downcard_hand(dealers_hand) # during player turn 
=> [["?", "?"],["H", "9"]]


dealer_reveal_downcard(dealers_hand) # after player turn
=> [["S", "7"], ["H", "9"]]

string = ""

players_hand.each do |card| 
  string << card
end

players_hand.each do |card| 
  string << card  
end  
TypeError: no implicit conversion of Array into String

players_hand = [["D", "K"], ["H", "4"]]

players_hand [0] 
=> ["D", "K"]










