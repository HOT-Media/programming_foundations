```ruby
def calculate_hand_values
end 




players_hand = [["D", "K"], ["H", "4"]]

dealers_hand = [["S", "7"], ["H", "9"]]

          #players_hand
def calculate_hand_values(hand)
  values = hand.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == "A" # "ACE"
      sum += 11
    elsif value.to_i == 0 # J, Q, K 
      sum += 10 
    else
      sum += value.to_i
    end
  end
  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

DEALER DOWN CARD CALCULATION 
ADD IF hand[0] == ? 
sum += 0 


players_hand = [["D", "K"], ["H", "4"]]

dealers_hand = [["?", "?"], ["S", "7"], ["H", "9"]]

downcard_hand = dealers_downcard_hand(dealers_hand) # during players turn
=> [["?", "?"],["H", "9"]]

dealer_reveal_downcard(dealers_hand) # after players turn
=> [["S", "7"], ["H", "9"]]

dealers_hand
=> [["S", "7"], ["H", "9"]]



players_hand_value = calculate_hand_values(players_hand)
=> 14
dealers_hand_value = calculate_hand_values(calculate_without_downcard) # during players turn
=> 9
dealers_hand_value = calculate_hand_values(dealers_hand) # after players turn
=> 16



def calculate_hand_values(hand)
  values = hand.map{ |card_sub_array| card_sub_array[1] }
    sum = 0
    binding.pry
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


*****************************************************************************************************

downcard_hand = [["?", "?"], ["H", "K"]]
=> [["?", "?"], ["H", "K"]]
def dog x
  puts x
end  
=> :dog
dog((downcard_hand[1][1]))
K
=> n







K Q J A or just value 
no addition just assignment

                                        |
                                        V
    downcard_hand = [["?", "?"], ["H", "K"]]
    downcard_hand_value(        "K"         )
    downcard_hand_value(downcard_hand[1][1])


def downcard_hand_value(upcard_value)
  value = if upcard_value == "A"
            11
          elsif upcard_value.to_i == 0
            10
          else
            upcard_value.to_i
          end
end

downcard_hand_value(downcard_hand[1][1])


def calculate_face_values

def calculate_integers 


player_hand = [["D", "10"], ["H", "K"]]

def calculate_hand_values(hand)
  values = hand.map { |card_sub_array| card_sub_array[1] }
=> ["10", "K"] # add these together

  ["10", "K"]
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |card_value| card_value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end


def extract_values(hand)
  values = hand.map { |card_sub_array| card_sub_array[1] }
end

=> ["10", "K"] # add these together

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
=> [10,10]

.sum


def extract_values(hand)
  values = hand.map { |card_sub_array| card_sub_array[1] }
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

def calculate_hand_value(hand)
  value_array = extract_values(hand)
  integer_array = convert_values_to_integers(value_array)
  integer_array.sum
end


player_hand = [["D", "10"], ["H", "K"]]

calculate_hand_value(player_hand)














# good
bar = if foo
        1
      else
        2
      end







end





extract Ace logic and calculation 



Style/ConditionalAssignment:
  Description: >-

Use the return value of `if` and `case` statements for
                 assignment to a variable and variable comparison instead
                 of assigning that variable inside of each branch.

EnforcedStyle: assign_to_condition

# bad
if foo
  bar = 1
else
  bar = 2
end

case foo
when 'a'
  bar += 1
else
  bar += 2
end

if foo
  some_method
  bar = 1
else
  some_other_method
  bar = 2
end

# good
bar = if foo
        1
      else
        2
      end




  if hand_value == "A"
    sum += 11
  elsif hand_value == "?"
    sum += 0
  elsif hand_value.to_i == 0
    sum += 10
  else
    sum += hand_value.to_i
  end
  sum -= 10 if sum > 21
  sum



bar += case foo
       when 'a'
         1
       else
         2
       end

bar << if foo
         some_method
         1
       else
         some_other_method
         2
       end









def calculate_hand_values(hand)
  values = hand.map { |card_sub_array| card_sub_array[1] }
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |card_value| card_value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end







