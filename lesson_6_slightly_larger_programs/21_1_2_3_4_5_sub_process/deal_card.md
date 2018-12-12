INITIALIZE THE PLAYERS HAND
DEAL A CARD TO THE PLAYER
REMOVE THE DEALT CARD FROM THE DECK
```ruby
def deal
end



UNSHUFFLED_DECK.freeze

deck = UNSHUFFLED_DECK.shuffle!

def deal_to_player(players_hand, deck)
  players_hand << deck.delete(deck.sample)
end

def deal_to_dealer(dealers_hand, deck)
  dealers_hand << deck.delete(deck.sample)
end

players_hand = []
dealers_hand = [ ["?", "?"]]

deal_to_player players_hand, deck

deal_to_dealer dealers_hand, deck 

deal_to_player players_hand, deck

deal_to_dealer dealers_hand, deck 

players_hand

dealers_hand





def construct_deck_md
end


UNSHUFFLED_DECK =  [["H", "1"], ["H", "4"], ["D", "K"], ["H", "Q"]]
UNSHUFFLED_DECK.freeze

deck = UNSHUFFLED_DECK.shuffle
=> [["D", "K"], ["H", "Q"], ["H", "4"], ["H", "1"]]

players_hand = []
=> []
dealers_hand = [ ["?", "?"]]
=> [["?", "?"]]
deal_to_player players_hand, deck
=> [["D", "K"]]

deal_to_dealer dealers_hand, deck 
=> [["?", "?"], ["H", "Q"]]

deal_to_player players_hand, deck
=> [["D", "K"], ["H", "4"]]

deal_to_dealer dealers_hand, deck 
=> [["?", "?"], ["H", "Q"], ["H", "1"]]

players_hand
=> [["D", "K"], ["H", "4"]]

dealers_hand
=> [["?", "?"], ["H", "Q"], ["H", "1"]]




























