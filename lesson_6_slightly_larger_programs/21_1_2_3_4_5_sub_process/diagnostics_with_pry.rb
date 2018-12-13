require 'pry'
require 'pry-byebug'


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



UNSHUFFLED_DECK = [
                  ["H", "2"],
                  ["H", "3"],
                  ["H", "4"],
                  ["H", "5"],
                  ["H", "6"],
                  ["H", "7"],
                  ["H", "8"],
                  ["H", "9"],
                  ["H", "10"],
                  ["H", "A"],
                  ["H", "K"],
                  ["H", "Q"],
                  ["H", "J"],
                  ["D", "2"],
                  ["D", "3"],
                  ["D", "4"],
                  ["D", "5"],
                  ["D", "6"],
                  ["D", "7"],
                  ["D", "8"],
                  ["D", "9"],
                  ["D", "10"],
                  ["D", "A"],
                  ["D", "K"],
                  ["D", "Q"],
                  ["D", "J"],
                  ["S", "2"],
                  ["S", "3"],
                  ["S", "4"],
                  ["S", "5"],
                  ["S", "6"],
                  ["S", "7"],
                  ["S", "8"],
                  ["S", "9"],
                  ["S", "10"],
                  ["S", "A"],
                  ["S", "K"],
                  ["S", "Q"],
                  ["S", "J"],
                  ["C", "2"],
                  ["C", "3"],
                  ["C", "4"],
                  ["C", "5"],
                  ["C", "6"],
                  ["C", "7"],
                  ["C", "8"],
                  ["C", "9"],
                  ["C", "10"],
                  ["C", "A"],
                  ["C", "K"],
                  ["C", "Q"],
                  ["C", "J"]
                 ]





WINNING_SCORE = 5
UNSHUFFLED_DECK.freeze

def clear_screen
  system('clear') || system('cls')
end

def welcome_message
  msg =  <<WELCOME 
Welcome to 21.
The winner of each "hand" will earn 1 point.
The game is won when either you or the dealer win 5 hands.
WELCOME
  puts msg
end

def display_rules?
  loop do 
    puts "Would you like to see the rules? yes or no "
    answer = gets.chomp.downcase
    if answer == "yes" || answer == "y"
      return true
      break
    elsif answer == "no" || answer == "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
  end
end

def display_rules
  puts RULES
end


def deal_to_player(players_hand, deck)
  players_hand << deck.delete(deck.sample)
end


def deal_to_dealer(dealers_hand, deck)
  dealers_hand << deck.delete(deck.sample)
end


def dealers_downcard_hand(dealers_hand)
  downcard_hand = []
  downcard_hand << dealers_hand[0] << dealers_hand[2]
  downcard_hand
end



def display_cards_player_turn(player, dealer)
  puts "Your hand:"
  player.each{|card| puts "#{card}" }
  puts
  puts "Dealers hand"
  puts "#{dealer[0]}"
  puts "#{dealer[2]}"
end


def display_cards_dealer_turn(player, dealer)
puts "Your hand:"
  player.each{|card| puts "#{card}" }
  puts
  puts "Dealers hand"
  dealer.each{|card| puts "#{card}" }
end



def calculate_hand_values(hand)
  values = hand.map{ |card_sub_array| card_sub_array[1] }
    sum = 0
    #binding.pry
    values.each do |value|
      if value == "A" # "ACE"
        sum += 11
      elsif value == "?"
        sum += 0
      elsif value.to_i == 0 # J, Q, K 
        sum += 10 
      else
        sum += value.to_i
      end
    end
  # correct for Aces
  values.select{ |card_value| card_value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end


def display_hand_values(player, dealer)
  puts "Players hand total: #{player}    Dealers hand total: #{dealer}"
end


def twenty_one?(hand)
  hand == 21 
end


def over_seventeen?(hand)
  hand > 17
end


def bust?(hand)
  hand > 21
end


def push?(players_hand_value, dealers_hand_value)
  players_hand_value == dealers_hand_value
end


def hit?
  hit_question = <<HIT_OR_NOT
  "What do you want to do?"
  "Enter hit for another card"
  "Enter stay if you do not want another card"
HIT_OR_NOT
  #binding.pry
  loop do 
    puts hit_question
    answer = gets.chomp.downcase
    if answer == "hit" || answer == "h"
      return true
      break
    elsif answer == "stay" || answer == "s"
      return false
      break
    else
      puts "Valid responses are hit or stay"
    end
  end
end


def dealer_reveal_downcard(dealers_hand)
  dealers_hand.shift
  dealers_hand
end


def who_won_hand?(player,dealer)
  player > dealer ? "Player" : "Dealer"
end



def display_hand_winner(hand_winner)
  puts "#{hand_winner} won that hand!!"
end



def add_one_point(hand_winner, dealer, player)
  if hand_winner == "Dealer"
    dealer << 1
  elsif hand_winner == "Player"
    player << 1
  end
end



def display_game_score(dealers_score,players_score)
  p "Your score: #{players_score.sum}"
  p "Dealers score: #{dealers_score.sum}"
end


def someone_won_game? player_score, dealer_score
  player_score.sum == WINNING_SCORE || dealer_score.sum == WINNING_SCORE
end


def who_won_game? player_score, dealer_score
  player_score.sum > dealer_score.sum ? "Player" : "Dealer" 
end


def display_game_winner winner 
  puts "#{winner} won the game!"
end


def play_again?
   puts "Would you like to play another game?, yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || answer == "y"
      return true
      break
    elsif answer == "no" || answer == "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
  end
end


deck = UNSHUFFLED_DECK.shuffle

player_score = []
dealer_score = []


welcome_message
display_rules if display_rules? 
clear_screen

# loop do #exit game after reading rules but before starting game
#   quit_game = exit_game? if begin_game? == false
#   break if quit_game == true
# end

display_game_score dealer_score,player_score# points for each round

loop do # play again loop
  loop do # break when the player or dealer score is 5, WINNING_SCORE = 5
  players_hand = []
  dealers_hand = [ ["?", "?"]] 

    deal_to_player players_hand, deck
    deal_to_dealer dealers_hand, deck 
    deal_to_player players_hand, deck
    deal_to_dealer dealers_hand, deck 
    downcard_hand = dealers_downcard_hand(dealers_hand)
    #binding.pry
    display_cards_player_turn(players_hand, dealers_hand) 
    player_hand_value = calculate_hand_values(players_hand) 
    dealer_hand_value = calculate_hand_values(downcard_hand) 
    #binding.pry # 10
    display_hand_values(player_hand_value, dealer_hand_value) 
    #binding.pry
    loop do # players turn
      break if twenty_one?(player_hand_value) == true 
      hit_player = hit?
      #clear_screen
      deal_to_player(players_hand, deck) if hit_player == true
      display_cards_player_turn(players_hand, dealers_hand)
      break if hit_player == false
      #binding.pry
      player_hand_value = calculate_hand_values(players_hand)
      display_hand_values(player_hand_value, dealer_hand_value)
      #binding.pry
      break if bust?(player_hand_value) == true
    end # end players turn loop

    dealer_reveal_downcard(dealers_hand) # 2,10 => 12
    loop do # dealers hand loop
      display_cards_dealer_turn(players_hand, dealers_hand) # players hand and show dealers full hand 2,10,8
      sleep 2
      dealer_hand_value = calculate_hand_values(dealers_hand)
      display_hand_values(player_hand_value, dealer_hand_value)
      sleep 2
      #binding.pry
      break if bust?(player_hand_value) == true
      break if twenty_one?(dealer_hand_value) == true
      break if push?(player_hand_value, dealer_hand_value) == true
      break if over_seventeen?(dealer_hand_value) == true
      #binding.pry
      deal_to_dealer(dealers_hand, deck) if over_seventeen?(dealer_hand_value) == false
      sleep 2
    end # end dealer hand

    hand_winner = who_won_hand? player_hand_value, dealer_hand_value
    display_hand_winner(hand_winner)
    add_one_point(hand_winner, dealer_score, player_score)
    display_game_score(dealer_score,player_score)
    break if someone_won_game?(player_score, dealer_score)# break gameplay loop
  end # end first to five loop
  who_won_game?(player_score, dealer_score)
  display_game_winner(player_score, dealer_score)
  continue = play_again?
  break if continue == false
  puts "Thanks for playing"
end # end play again loop
