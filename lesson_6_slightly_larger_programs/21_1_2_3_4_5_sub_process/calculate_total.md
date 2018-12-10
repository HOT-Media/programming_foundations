```ruby
def calculate_hand_values
end 




players_hand = [["D", "K"], ["H", "4"]]

dealers_hand = [["S", "7"], ["H", "9"]]

          #players_hand
def calculate_hand_values(hand)
  values = hand.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == "A" # "ACE"
      sum += 11
    elsif value.to_i == 0 # J, Q, K 
      sum += 10 
    else
      sum += value.to_i
    end
  end
  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end




players_hand = [["D", "K"], ["H", "4"]]

dealers_hand = [["?", "0"], ["S", "7"], ["H", "9"]]

calculate_without_downcard = dealers_downcard_hand(dealers_hand) # during players turn
=> [["?", "0"],["H", "9"]]

dealer_reveal_downcard(dealers_hand) # after players turn
=> [["S", "7"], ["H", "9"]]

dealers_hand
=> [["S", "7"], ["H", "9"]]



players_hand_value = calculate_hand_values(players_hand)
=> 14
dealers_hand_value = calculate_hand_values(calculate_without_downcard) # during players turn
=> 9
dealers_hand_value = calculate_hand_values(dealers_hand) # after players turn
=> 16





