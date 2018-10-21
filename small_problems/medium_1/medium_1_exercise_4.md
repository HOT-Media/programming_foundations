You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:
```ruby
round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].





all on
2 4 6 8 10 multiple of 2
3 6 9 multiple of multiples of 3

Array(1..10)

Array(1..10)
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def lights_left_on(num)

walk down the hall 10 times

1st walk turn on all the switches
  lights_array = Array(1..num)
                  Array(1..10)
                  => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

2nd walk turn off 2,4,6,8,10
record the lights that were turned off

off = 0
on = 1



array to represent each light


specific light and a state

kv

light1 

light_state = {light1: 1, light2: 1, light3: 1, light4: 1, light5: 1,
               light6: 1, light:7 1, light8: 1, light9: 1, light10: 1
              }

the second walk turn off 2,4,6,8,10
                        multiples of 2
                        record the state of the lights
                        update light_state hash values for each walk


light_state = {}
switch_and_state_arr = []

auto create the hash with 
num.times do |x|
  switch_and_state_arr[] "light" << x 
  light_state << switch_and_state_arr.to_h
end


light_state = {}
switch_and_state_arr = []
num.times do |x|
  switch_and_state_arr <<  "light" << x 
  light_state << switch_and_state_arr.to_h
end





the second walk turn off 2,4,6,8,10
                        multiples of 2
                        record the state of the lights
                        update light_state hash values for each walk


turn off light 2
update light2 kv pair
light_state[light2] => 0

etc 


after 10th walk

what lights are on
what kv pairs have a value of 1


light_state 
{light1: 1, light2: 1, light3: 1, light4: 1, light5: 1,}

light_state.values(0)

light_state_arr = {light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}.to_a


second walk, .times do iteration_number 1
{light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}



light_state.values(0)

num = 5

walks = num
walks = 5





light_state 
{light1: 1, light2: 1, light3: 1, light4: 1, light5: 1,}

light_state.values(0)

light_state_arr = {light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}.to_a


second walk, 

walks.times do iteration_number 1,
{light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}



light_state.values(0)

2nd walk multiple of 2
3rd walk multiple of 3
4th walk multiple of 2

walk = 5
 ( walk+ 1).times do |walk_number|
  if walk_number == 0 
    next
  else
    puts walk_number
    end
  end








walk = 5
=> 5
( walk+ 1).times do |walk_number| 
  if walk_number == 0   
    next    
  else    
    puts walk_number    
  end      
end    
1
2
3
4
5
=> 6



populate the hash based on   number_of_lights_walks(num) with kv .times above

update the hash each time i walk downt the hall with walks.times 

pad the hash with {light_correlation_pad: "idx_zero", 

{light_correlation_pad: "idx_zero",light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}.to_a


{light_correlation_pad: "idx_zero",light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}.to_a
=> [[:light_correlation_pad, "idx_zero"],
 [:light1, 1],
 [:light2, 0],
 [:light3, 1],
 [:light4, 0],
 [:light5, 1]]
light_state_array = {light_correlation_pad: "idx_zero",light1: 1, light2: 0, light3: 1, light4: 0, light5: 1,}.to_a
=> [[:light_correlation_pad, "idx_zero"],
 [:light1, 1],
 [:light2, 0],
 [:light3, 1],
 [:light4, 0],
 [:light5, 1]]
light_state_array 
=> [[:light_correlation_pad, "idx_zero"],
 [:light1, 1],
 [:light2, 0],
 [:light3, 1],
 [:light4, 0],
 [:light5, 1]]
light_state_array
=> [[:light_correlation_pad, "idx_zero"],
 [:light1, 1],
 [:light2, 0],
 [:light3, 1],
 [:light4, 0],
 [:light5, 1]]
light_state_array.map do |light_on|
  light_on if light_on[1] == 0
end  
=> [nil, nil, [:light2, 0], nil, [:light4, 0], nil]
light_state_array.map do |light_on|
  puts light_on[0] if light_on[1] == 0  
end  
light2
light4
=> [nil, nil, nil, nil, nil, nil]



















