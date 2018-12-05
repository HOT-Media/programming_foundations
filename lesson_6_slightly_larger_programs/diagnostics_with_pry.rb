require 'pry'
require 'pry-byebug'


PAINTED_CARD_VALUE = 10

def suit? suits
  suits.sample
end  

def card_value?(deck, suits)
  deck[suits].sample
end  

def remove_card! deck, suit, card
  deck[suit].delete(card)
end  

def suit_empty?(suit, deck)
  deck[suit].empty?
end  

def remove_suit(deck, suit)
  deck.delete(suit)
end 

deck = {
        "diamonds" => [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"],
        "hearts" => [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"],
        "clubs" => [],
        "spades" => [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]
        } 

suits = ["hearts", "diamonds", "clubs", "spades"]

def deal_card(suits,deck)
  binding.pry
suit = suit? suits
card = card_value? deck, suit
remove_card! deck, suit, card
suit_empty? suit, deck
remove_suit(deck, suits)  if suit_empty? suit, deck
card 
card == Integer ? card : card = PAINTED_CARD_VALUE
[card,suit]
end
# => [ 10, "diamonds"]

dealt_card = deal_card suits, deck
# => [ 10, "diamonds"]

puts "#{dealt_card[0]} of #{dealt_card[1]}"
# 10 of diamonds


players_hand = []

players_hand << dealt_card

players_hand 
# => [[ 10, "diamonds"]]








































