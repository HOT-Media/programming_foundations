


WINNING_SCORE = 5
UNSHUFFLED_DECK.freeze
deck = UNSHUFFLED_DECK.shuffle!


players_hand = []
dealers_hand = [ ["?", "?"]]
player_score = 0
dealer_score = 0
welcome_message
display_rules if display_rules? 

exit_game? if begin_game? == false

display_game_score dealers_score,player_score# points for each round
loop do # play again loop
  loop do # break when the player or dealer score is 5, WINNING_SCORE = 5 

    deal_to_player players_hand, deck
    deal_to_dealer dealers_hand, deck 
    deal_to_player players_hand, deck
    deal_to_dealer dealers_hand, deck 
    downcard_hand = dealers_downcard_hand(dealers_hand)
    display_cards_player_turn(players_hand, dealers_hand) # maybe go back to display_cards and use downcard hand and player hand card with question mark for dealer + 1 card up 
    players_hand_value = calculate_hand_values(players_hand) # 16
    dealers_hand_value = calculate_hand_values(downcard_hand) # 10
    display_hand_values(players_hand_value, dealers_hand_value) # display players full hand value and dealers upcard value

    loop do # players turn
      break if twenty_one?(players_hand_value) == true #=> 16 - false
      deal_to_player(players_hand, deck) if hit? == true
      display_cards_player_turn(players_hand, dealers_hand)
      players_hand_value = calculate_hand_values(players_hand)
      display_hand_values(players_hand_value, dealers_hand_value)
      break if bust?(players_hand_value) == true # => false
    end # end players turn loop

    dealer_reveal_downcard(dealers_hand) # 2,10 => 12
    loop do # dealers hand loop
      display_cards_dealer_turn(players_hand, dealers_hand) # players hand and show dealers full hand 2,10,8
      dealers_hand_value = calculate_hand_values(dealers_hand)
      display_hand_values(players_hand_value, dealers_hand_value)
      break if bust?(players_hand_value) == true
      break if twenty_one?(dealers_hand_value) == true# => false
      break if push?(players_hand_value, dealers_hand_value) == true
      break if over_seventeen?(dealers_hand_value) == true
      deal_to_dealer(dealers_hand, deck) if over_seventeen?(dealers_hand_value) == false # false - 12  => 8  dealers hand value 20 now
    end # end dealer hand

    hand_winner = who_won_hand? players_hand_value, dealers_hand_value
    display_hand_winner(hand_winner)
    add_one_point(hand_winner, dealers_score, players_score)
    display_game_score(dealers_score,players_score)
    break if someone_won_game?(player_score, dealer_score)# break gameplay loop
  end # end first to five loop
  who_won_game?(player_score, dealer_score)
  display_game_winner(player_score, dealer_score)
  continue = play_again?
  break if continue == false
  puts "Thanks for playing"
end # end play again loop


























