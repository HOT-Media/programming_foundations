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


player_hand = [["C", "J"], ["C", "3"]]
player_hand_value => 13

hit player 
player_hand =  ["C", "3"],["C", "3"],["C", "6"]]


def add_new_card_value(hand)





def extract_last_card_value(hand)
  hand.map { |card_sub_array| card_sub_array[1] }
end








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





    player_hand_value += players_hand.last[1] 
    dealer_hand_value = downcard_hand_value(downcard_hand[1][1])
    display_hand_values(player_hand_value, dealer_hand_value)





def display_hand_values(player, dealer)
  puts "Your hand total: #{player}    Dealers hand total: #{dealer}"
  puts
end



def new_card_value_to_integer(value)
    if value == "A"
      11
    elsif value.to_i == 0
      10
    else
      value.to_i
    end
  end
end



      player_hand_value +=  calculate_hand_values(players_hand)




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

player_hand = [["C", "9"], ["S", "7"], ["S", "A"]]

def calculate_hand_values(hand)
  value_array = extract_values(hand)
  value_array => [9,7,A]
  integer_array = convert_values_to_integers(value_array)
  =>[9,7,11]
  total = integer_array.sum
  total => 25
  value_array => [9,7,A]    25
  correct_aces((extract_values(hand)),total) if extract_values(hand).include? "A" && total > 21
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end





player_hand = [["C", "9"], ["S", "7"], ["S", "A"]]


def calculate_hand_values(hand)
  value_array = extract_values(hand)
  integer_array = convert_values_to_integers(value_array)
  total = integer_array.sum
  correct_aces((extract_values(hand)),total) if (extract_values(hand).include? "A") && total > 21
  total
end





def correct_aces(value_array,total)
  value_array.select { |value| value == "A" }.count.times do
  total -= 10 if total > 21
  end
  total
end

















