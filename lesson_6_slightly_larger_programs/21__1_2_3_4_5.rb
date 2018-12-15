require 'pry'
require 'pry-byebug'

RULES = File.read('rules.txt')

# RULES = <<TWENTY_ONE_RULES

# You start with a normal 52-card deck consisting of the 4 suits:
# (hearts, diamonds, clubs, and spades),and 13 values:
# (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace)

# The goal of Twenty-One is to try to get as close to 21 as possible,
# without going over. If you go over 21, it's a "bust" and you lose.


# Card values: Cards numberd 2 through 10 are worth their face value. The
# jack, queen, and king are each worth 10, and the ace can be worth 1
# or 11. The ace's value is determined each time a new card is drawn
# from the deck. For example, if the hand contains a 2, an ace, and a 5,
# then the total value of the hand is 18. In this case, the ace is worth
# 11 because the sum of the hand (2 + 11 + 5) doesn't exceed 21.

# Game play:
# A "hand" reffers to the cards you are currently holding in your hand.
# The game begins when the dealer deals a "hand"
# The cards are dealt in this order:
# player - face up
# dealer - face down, which is reffered to as the "downcard"
# player - face up
# dealer - face up


# You are the player, and you go first.
# After you are dealt your first two cards, you will be prompted to
# either "hit" or "stay".
# Type "hit" for another card.
# Type "stay" if you are satified with your "hand" and you do not want
# another card.
# If the total exceeds 21 after a card has been dealt to you, then you
# "bust" and the dealer wins.


# After you "stay", the dealer will reveal their downcard.
# If the value of the dealers "hand" is less than 17, the dealer
# "hits" until the value of their "hand" is greater than 17
# If the value of the dealers "hand" is now greater than 21, the dealer
# "busts"
# If the value of the dealers "hand" is now less than 21, and the value
# of your "hand" is greater than the value of the dealers "hand"
# you win the "hand", otherwise the dealer wins the "hand".
# If the value of the dealers "hand" is now less than 21 and the value
# of your "hand" and the value of the dealers "hand" are equal, this is
# a tie which is reffered to as a "Tie", and no points are awarded for
# that "hand".


# Scoring:
# The winner of each "hand" will earn one point.
# The game is won when you or the dealer win 5 hands.


# TWENTY_ONE_RULES

WINNING_SCORE = 5
FACE_CARDS = ["K", "Q", "J", "A"]
SUITS = ["H", "D", "C", "S"]

def construct_deck
  cards = []
  2.upto(10) { |num| cards << num.to_s }
  FACE_CARDS.each { |suit| cards << suit }
  deck = cards.product(SUITS)
  deck.map!(&:reverse) # { |card| card.reverse }
end

def clear_screen
  system('clear') || system('cls')
end

def welcome_message
  msg = <<WELCOME
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
    elsif answer == "no" || answer == "n"
      return false
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
  puts
  puts "Your hand:"
  player.each { |card| puts card.to_s }
  puts
  puts "Dealers hand"
  puts dealer[0].to_s
  puts dealer[2].to_s
  puts
end

def display_cards_dealer_turn(player, dealer)
  puts
  puts "Your hand:"
  player.each { |card| puts card.to_s }
  puts
  puts "Dealers hand"
  dealer.each { |card| puts card.to_s }
  puts
end

def display_downcard_message(player, dealer)
  puts
  puts "Your hand:"
  player.each { |card| puts card.to_s }
  puts
  puts "The dealer is revealing their downcard"
  puts dealer[0].to_s
  puts dealer[2].to_s
  puts
end

def downcard_hand_value(upcard_value)
  if upcard_value == "A"
    11
  elsif upcard_value.to_i == 0
    10
  else
    upcard_value.to_i
  end
end

def extract_values(hand)
  hand.map { |card_sub_array| card_sub_array[1] }
end

def convert_values_to_integers(values)
  values.map! do |value|
    if value == "A"
      11
    elsif value.to_i == 0
      10
    else
      value.to_i
    end
  end
end

def calculate_hand_values(hand)
  value_array = extract_values(hand)
  integer_array = convert_values_to_integers(value_array)
  integer_array.sum
end

def display_hand_values(player, dealer)
  puts "Your hand total: #{player}    Dealers hand total: #{dealer}"
  puts
end

def twenty_one?(hand)
  hand == 21
end

def over_seventeen?(hand)
  hand >= 17
end

def display_player_twenty_one
  puts "!!! TWENTY ONE !!!"
  sleep 3
end

def display_player_bust
  puts "!!! YOU BUSTED !!!"
  sleep 3
end

def display_dealer_bust
  puts "!!! DEALER BUST !!!"
  sleep 3
end

def bust?(hand)
  hand > 21
end

def push?(players_hand_value, dealers_hand_value)
  players_hand_value == dealers_hand_value
end

HIT_QUESTION = <<HIT_OR_NOT
  "What do you want to do?"
  "Enter hit for another card"
  "Enter stay if you do not want another card"
HIT_OR_NOT

def hit?
  loop do
    puts HIT_QUESTION
    answer = gets.chomp.downcase
    if answer == "hit" || answer == "h"
      return true
    elsif answer == "stay" || answer == "s"
      return false
    else
      puts "Valid responses are hit or stay"
    end
  end
end

def dealer_reveal_downcard(dealers_hand)
  dealers_hand.shift
  dealers_hand
end

def display_dealing_to_dealer
  puts "The dealer is dealing themself another card"
end

def who_won_hand?(player, dealer)
  return "Push" if player == dealer
  return "Dealer" if player > 21
  return "Player" if dealer > 21
  dealer > player ? "Dealer" : "Player"
end

def display_hand_winner(hand_winner)
  hand_winner = "You" if hand_winner == "Player"
  if hand_winner == "Push"
    puts "Tie"
    return
  else
    puts "#{hand_winner} won that hand!!"
  end
end

def add_one_point(hand_winner, dealer, player)
  if hand_winner == "Dealer"
    dealer << 1
  elsif hand_winner == "Player"
    player << 1
  end
end

def display_game_score(dealers_score, players_score)
  puts "Your score: #{players_score.sum} Dealers score: #{dealers_score.sum}"
end

def someone_won_game?(player_score, dealer_score)
  player_score.sum == WINNING_SCORE || dealer_score.sum == WINNING_SCORE
end

def who_won_game?(player_score, dealer_score)
  player_score.sum > dealer_score.sum ? "Player" : "Dealer"
end

def display_game_winner(winner)
  winner = "You" if winner == "Player"
  puts "#{winner} won the game!"
end

def play_again?
  loop do
    puts "Would you like to play another game?, yes or no "
    answer = gets.chomp.downcase
    if answer == "yes" || answer == "y"
      return true
    elsif answer == "no" || answer == "n"
      return false
    else
      puts "Valid answers are yes or no"
    end
  end
end

def enter_to_continue
  puts "Press enter to continue"
  gets
end

def enter_to_deal_cards
  puts "Press enter to deal the cards"
  gets
end

player_score = []
dealer_score = []
player_busted = nil
clear_screen
welcome_message
display_rules if display_rules?
enter_to_deal_cards

loop do
  clear_screen
  loop do
    deck = construct_deck.shuffle
    display_game_score dealer_score, player_score
    players_hand = []
    dealers_hand = [["?", "?"]]
    deal_to_player players_hand, deck
    deal_to_dealer dealers_hand, deck
    deal_to_player players_hand, deck
    deal_to_dealer dealers_hand, deck
    downcard_hand = dealers_downcard_hand(dealers_hand)
    display_cards_player_turn(players_hand, dealers_hand)
    player_hand_value = calculate_hand_values(players_hand)
    dealer_hand_value = downcard_hand_value(downcard_hand[1][1])
    display_hand_values(player_hand_value, dealer_hand_value)

    loop do
      twenty_one = twenty_one?(player_hand_value)
      display_player_twenty_one if twenty_one == true
      break if twenty_one == true
      hit_player = hit?
      clear_screen
      deal_to_player(players_hand, deck) if hit_player == true
      player_hand_value = calculate_hand_values(players_hand)
      display_game_score dealer_score, player_score
      display_cards_player_turn(players_hand, dealers_hand)
      display_hand_values(player_hand_value, dealer_hand_value)
      player_busted = bust?(player_hand_value)
      display_player_bust if player_busted == true
      break if hit_player == false || player_busted == true
    end

    clear_screen
    display_game_score dealer_score, player_score
    display_downcard_message(players_hand, dealers_hand)
    display_hand_values(player_hand_value, dealer_hand_value)
    sleep 2
    dealer_reveal_downcard(dealers_hand)

    loop do
      clear_screen
      display_game_score dealer_score, player_score
      display_cards_dealer_turn(players_hand, dealers_hand)
      dealer_hand_value = calculate_hand_values(dealers_hand)
      display_hand_values(player_hand_value, dealer_hand_value)
      dealer_busted = bust?(dealer_hand_value)
      display_dealer_bust if dealer_busted == true
      break if player_busted == true
      break if twenty_one?(dealer_hand_value) == true
      break if over_seventeen?(dealer_hand_value) == true
      display_dealing_to_dealer
      sleep 2
      over_seventeen = over_seventeen?(dealer_hand_value)
      deal_to_dealer(dealers_hand, deck) if over_seventeen == false
    end

    hand_winner = who_won_hand? player_hand_value, dealer_hand_value
    display_hand_winner(hand_winner)
    add_one_point(hand_winner, dealer_score, player_score)
    enter_to_continue
    clear_screen
    break if someone_won_game?(player_score, dealer_score)
  end
  game_winner = who_won_game?(player_score, dealer_score)
  display_game_score dealer_score, player_score
  display_game_winner(game_winner)
  player_score.clear
  dealer_score.clear
  play_another_game = play_again?
  break if play_another_game == false
end
puts "Thanks for playing"
