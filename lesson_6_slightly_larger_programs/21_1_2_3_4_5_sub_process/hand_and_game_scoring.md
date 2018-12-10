```ruby
def hand_and_game_scoring_md 
end








WHO WON THE LAST HAND

md_link -> calculate_total_md


players_hand_value = 14
dealers_hand_value = 16

                  players_hand_value, dealers_hand_value
def who_won_hand?(player,dealer)
  players_hand_value > dealers_hand_value? "Player" : "Dealer"
end

hand_winner = who_won_hand? players_hand_value, dealers_hand_value
=> "Dealer"


def display_hand_winner(hand_winner)
  puts "#{hand_winner} won that hand!!"
end




ADD A POINT FOR EACH WINNING HAND 



def add_one_point(hand_winner, dealer, player)
  if hand_winner == "Dealer"
    dealers_score += 1
  elsif hand_winner == "Player"
    players_score += 1
  end
  hand_winner
end

add_one_point(hand_winner, dealers_score, players_score)
=> dealers_score
=> 1
players_score
=> 0



DISPLAY GAME SCORE 
dealers_score = 0
players_score = 0

def display_game_score(dealers_score,players_score)
  p "Your score: #{players_score}"
  p "Dealers score: #{dealers_score}"
end

display_game_score dealers_score,player_score
"Your score: 0"
"Dealers score: 1"


def add_one_point(hand_winner, dealer, player)
  if hand_winner == "Dealer"
    dealers_score += 1
  elsif hand_winner == "Player"
    players_score += 1
  end
  hand_winner
end

add_one_point(hand_winner, dealers_score, players_score)
=> dealers_score
=> 1
players_score
=> 0

def someone_won_game? player_score, dealer_score
  player_score == WINNING_SCORE || dealer_score == WINNING_SCORE
end
=> true

def who_won_game? player_score, dealer_score
  player_score > dealer_score? "Player" : "Dealer" 
end
=> "Dealer"

def display_game_winner winner 
  puts "#{winner} won the game!"
end
=> "Dealer won the game!"

