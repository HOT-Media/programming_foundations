```ruby
def hand_and_game_scoring_md 
end



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

