```ruby
def display_rules
  puts RULES
end


RULES = <<TWENTY_ONE_RULES

You start with a normal 52-card deck consisting of the 4 suits: 
(hearts, diamonds, clubs, and spades),and 13 values:
(2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace)

The goal of Twenty-One is to try to get as close to 21 as possible,
without going over. If you go over 21, it's a "bust" and you lose.


Card values: Cards numberd 2 through 10 are worth their face value. The 
jack, queen, and king are each worth 10, and the ace can be worth 1
or 11. The ace's value is determined each time a new card is drawn 
from the deck. For example, if the hand contains a 2, an ace, and a 5,
then the total value of the hand is 18. In this case, the ace is worth
11 because the sum of the hand (2 + 11 + 5) doesn't exceed 21.

Game play: 
A "hand" reffers to the cards you are currently holding in your hand.
The game begins when the dealer deals a "hand" 
The cards are dealt in this order:
player - face up 
dealer - face down, which is reffered to as the "downcard"
player - face up
dealer - face up

 
You are the player, and you go first.
After you are dealt your first two cards, you will be prompted to 
either "hit" or "stay". 
Type "hit" for another card.
Type "stay" if you are satified with your "hand" and you do not want 
another card.
If the total exceeds 21 after a card has been dealt to you, then you
"bust" and the dealer wins.


After you "stay", the dealer will reveal their downcard.
If the value of the dealers "hand" is less than 17, the dealer 
"hits" until the value of their "hand" is greater than 17
If the value of the dealers "hand" is now greater than 21, the dealer
"busts"
If the value of the dealers "hand" is now less than 21, and the value
of your "hand" is greater than the value of the dealers "hand"
you win the "hand", otherwise the dealer wins the "hand".
If the value of the dealers "hand" is now less than 21 and the value
of your "hand" and the value of the dealers "hand" are equal, this is
a tie which is reffered to as a "push", and no points are awarded for 
that "hand".


Scoring:
The winner of each "hand" will earn one point.
The game is won when you or the dealer win 5 hands.


TWENTY_ONE_RULES





```











