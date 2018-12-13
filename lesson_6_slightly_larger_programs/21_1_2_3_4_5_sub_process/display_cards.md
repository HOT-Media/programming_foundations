```ruby

def display_cards_player_turn(player, dealer)
  puts "#{player[0]}  #{player[1]}"
  puts "#{dealer[0]}  #{dealer[2]}"
end


def display_cards_dealer_turn(player, dealer)
puts "#{player[0]}  #{player[1]}"
puts "#{dealer[0]}  #{dealer[1]}"
end


players_hand = [["D", "K"], ["H", "4"]]

dealers_hand = [["?", "?"], ["S", "7"], ["H", "9"]] 

calculate_without_downcard = dealers_downcard_hand(dealers_hand) # during player turn 
=> [["?", "?"],["H", "9"]]


dealer_reveal_downcard(dealers_hand) # after player turn
=> [["S", "7"], ["H", "9"]]





def display_cards_player_turn(player, dealer)
  player.each{|card| puts "#{card}" }
  dealer.each{|card| puts "#{card}" }
  # puts "#{player[0]}  #{player[1]}"
  # puts "#{dealer[0]}  #{dealer[2]}"
end



