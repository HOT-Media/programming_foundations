```ruby

def dealers_downcard_hand(dealers_hand)
  downcard_hand = []
  downcard_hand << dealers_hand[0] << dealers_hand[2]
  downcard_hand
end



def dealer_reveal_downcard(dealers_hand)
  dealer_hand.unshift
  dealer_hand
end



dealers_hand = [["?", "0"], ["S", "7"], ["H", "9"]] 

calculate_without_downcard = dealers_downcard_hand(dealers_hand)
=> [["?", "0"],["H", "9"]]


dealer_reveal_downcard(dealers_hand)
=> [["S", "7"], ["H", "9"]]

dealers_hand
=> [["S", "7"], ["H", "9"]]




