```ruby


def display_rules?
  puts "Would you like to see the rules? yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || "y"
      return true
      break
    elsif answer == "no" || "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
end



def begin_game?
    puts "Are you ready to begin the game?, yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || "y"
      return true
      break
    elsif answer == "no" || "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
end



def exit_game?
  puts "Exit game?, yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || "y"
      return true
      break
    elsif answer == "no" || "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
  end
end



def over_seventeen?(hand)
  hand > 17
end


def twenty_one?(hand)
  hand == 21 
end



def bust?(hand)
  hand > 21
end


def push?(players_hand_value, dealers_hand_value)
  players_hand_value == dealers_hand_value
end


def hit?
  <<HEREDOC 
  "What do you want to do?"
  "Enter hit for another card"
  "Enter stay if you do not want another card"
  HEREDOC
  answer = gets.chomp.downcase
  loop do 
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



if hit? == true
  deal_to_player(player)
end



def play_again?
   puts "Would you like to play another game?, yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || "y"
      return true
      break
    elsif answer == "no" || "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
  end
end


