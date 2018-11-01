You have a bank of switches before you, numbered from 1 to n. 

Each switch is connected to exactly one light that is initially off. 

You walk down the row of switches and toggle every one of them. 

You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6,...

On the third pass, you go back again to the beginning and toggle switches 3, 6, 9,..

You repeat this process and keep going until you have been through n repetitions.

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


light_state = []
switch_and_state_arr = []
num.times do |x|
  x += 1
  switch_and_state_arr <<  ("light" << x.to_s).to_sym 
  switch_and_state_arr << x
  light_state << switch_and_state_arr
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


light_state = []
=> []

switch_and_state_arr = []
=> []

num.times do |x|
  x += 1    
  switch_and_state_arr <<  ("light" << x.to_s).to_sym     
  switch_and_state_arr << 1    
  light_state << switch_and_state_arr   
  switch_and_state_arr.clear   
end    
=> 5
light_state
=> [[], [], [], [], []]




"light1 1".to_a

=> 5

light_state
=> [[:light1, 1, :light2, 2, :light3, 3, :light4, 4, :light5, 5],


 [:light1, 1, :light2, 2, :light3, 3, :light4, 4, :light5, 5],
 [:light1, 1, :light2, 2, :light3, 3, :light4, 4, :light5, 5],
 [:light1, 1, :light2, 2, :light3, 3, :light4, 4, :light5, 5],
 [:light1, 1, :light2, 2, :light3, 3, :light4, 4, :light5, 5]]







populate the hash










light_state 
{light1: 1, light2: 1, light3: 1, light4: 1, light5: 1,}

turn on and off lights on 5 walks

light_state key value to light number left on

final_walk_lights_on = []

light_state.each do |key,value|
 final_walk_lights_on << key if value == 1 on
end

final_walk_lights_on
=> [:light2, :light3, :light4]

final_walk_lights_on.map {|idx| idx.to_s}
=> ["light2", "light3", "light4"]





string light 1 
to array

nest that array in array to hash




"light" + idx.to_s 

"light" + idx.to_s + 1.to_s





"light_num 1".gsub(/_num/) { |char| char = idx }

sub_arr = "light_num 1".gsub(/_num/) { |char| char = idx }
=> "light1 1"

to_hash_array = []
=> []
to_hash_array << sub_arr.split(' ')


num.times do |x|
  x += 1    
  switch_and_state_arr <<  ("light" << x.to_s).to_sym     
  switch_and_state_arr << 1    
  light_state << switch_and_state_arr   
  switch_and_state_arr.clear   
end    
=> 5
light_state
=> [[], [], [], [], []]





how many lights / walks == num

num = 5

each light is represented by a kv pair 
  light number and light state
  light1            0 for off 1 for on


the light_number_and_state hash will be automatically populated using num.times

begin with an empty hash

light_number_and_state = {}

the String "light_num 1" will be used for each kv pair:

num = 5
5 lights

on each iteration, the string "light_num 1" will be gsubd with num
add 1 to num then gsub 2

the string will be split which will make it an array

on each iteration, put that array into an array to convert to a Hash

walks/lights = 5




num = 5

assign_num = 0

lights_to_hash = []

loop do 

assign_num += 1
 p assign_num
  sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
  #=> ["light1", "1"]
 lights_to_hash << sub_arr
 break if assign_num == num

end

lights_to_hash












assign_num
=> 5
sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
=> ["light5", "1"]







sub_array
=> ["light1", "1"]
lights_to_hash = []
=> []
lights_to_hash << sub_array
=> [["light1", "1"]]




assign_num
=> 5
sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
=> ["light5", "1"]



** ** *
populate hash 




num = 5

assign_num = 0

lights_to_hash = []

loop do 

assign_num += 1
 p assign_num
  sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
  #=> ["light1", "1"]
 lights_to_hash << sub_arr
 break if assign_num == num

end

lights_to_hash

** ** ** ** *


num = 5

assign_num = 0
lights_to_hash = []

loop do 
  assign_num += 1
  p assign_num
  sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
  #=> ["light1", "1"]
  lights_to_hash << sub_arr
  break if assign_num == num
end

lights_to_hash

lights_to_hash.to_h

light_number_and_state = lights_to_hash.to_h 
=> {"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}








num = 5

assign_num = 0
lights_to_hash = []

loop do 
  assign_num += 1
  p assign_num
  sub_arr = "light_num 1".gsub(/_num/) do |char|
    char = assign_num 
  end
    #=> ["light1", "1"]
  lights_to_hash << (sub_arr.split(' '))
  break if assign_num == num
end

lights_to_hash

lights_to_hash.to_h

light_number_and_state = lights_to_hash.to_h 
=> {"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}







num = 5

assign_num = 0
lights_to_hash = []

loop do
  assign_num += 1

  sub_arr = "light_num 1".gsub(/_num/) do |char|
    char = assign_num
  end

  lights_to_hash << ((sub_arr.split(' ')).map do |idx|
    if idx.to_i.to_s == idx.to_i.to_sym
    else
      idx.to_sym
    end
  end
  break if assign_num == num
end

light_number_and_state = lights_to_hash.to_h






=> {"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}

symbol_array = (sub_arr.split(' '))









light_state 
{light1: 1, light2: 1, light3: 1, light4: 1, light5: 1,}

turn on and off lights on 5 walks

light_state key value to light number left on

final_walk_lights_on = []

light_state.each do |key,value|
 final_walk_lights_on << key if value == 1 on
end

final_walk_lights_on
=> [:light2, :light3, :light4]

final_walk_lights_on.map {|idx| idx.to_s}
=> ["light2", "light3", "light4"]




light_number_and_state = {"light1"=>"1", "light2"=>"0", "light3"=>"1", "light4"=>"0", "light5"=>"1"}


first walk - default 1 walk, turn all the lights on
values

[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]


{ foo: 1, bar: 2 }.find_all { |key, value| value.even? }
# => [[:bar, 2]]

light_number_and_state .find_all { |key, value| value == "1" }
# => [[:bar, 2]]


light_number_and_state = {"light1"=>"1", "light2"=>"0", "light3"=>"1", "light4"=>"0", "light5"=>"1"}
=> {"light1"=>"1", "light2"=>"0", "light3"=>"1", "light4"=>"0", "light5"=>"1"}

light_number_and_state .find_all { |key, value| value == "1" }
=> [["light1", "1"], ["light3", "1"], ["light5", "1"]]


light_number_and_state


light_number_and_state.each do |key,value|
  output_str << (key + ", ") if value == '1'
end









light_number_and_state =
{"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}

light_number_and_state
=> {1=>1, 2=>1, 3=>1, 4=>1, 5=>1}


light_number_and_state

second walk turn off 2,4
num = 5

walks = 1  # all the lights are on so the first walk is done
loop do
  walks += 1
  if walks == 2
    light_number_and_state






toggle kv v 2,4,










populate hash ** ** * refactor for symbols

light_number_and_state
=> {1=>1, 2=>1, 3=>1, 4=>1, 5=>1}

num = 5

assign_num = 0
lights_to_hash = []

loop do 
  assign_num += 1
  p assign_num
  sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
  #=> ["light1", "1"]
  lights_to_hash << sub_arr
  break if assign_num == num
end

lights_to_hash

lights_to_hash.to_h

light_number_and_state = lights_to_hash.to_h 
=> {"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}



 
 turn off lights





output string from hash values ** ** ** ** ** 

light_number_and_state
=> {1=>1, 2=>0, 3=>1, 4=>0, 5=>1}


output_str = ''

light_number_and_state.each do |key,value|
  output_str << ("light #{key.to_s}, ") if value == 1
end 

output_str
=> "light 1, light 3, light 5, "



With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9]









output_str = ''

light_number_and_state.each do |key,value|
  output_str << (key + ", ") if value == '1'  ***modify to (key.to_s) + ', '
end  
=> {"light1"=>"1", "light2"=>"0", "light3"=>"1", "light4"=>"0", "light5"=>"1"}

output_str
=> "light1, light3, light5, "



***modify to (key.to_s) + ', '
("light #{key.to_s}, ")





light_number_and_state
=> {1=>1, 2=>0, 3=>1, 4=>0, 5=>1}


output_str = ''

light_number_and_state.each do |key,value|
  output_str << ("light #{key.to_s}, ") if value == 1
end 







light_number_and_state = {1=>1, 2=>0, 3=>1, 4=>0, 5=>1}
=> {1=>1, 2=>0, 3=>1, 4=>0, 5=>1}

output_str = ''
=> ""

light_number_and_state.each do |key,value|
  output_str << ("light #{key.to_s}, ") if value == 1  
end   
=> {1=>1, 2=>0, 3=>1, 4=>0, 5=>1}
output_str
=> "light 1, light 3, light 5, "







light_number_and_state
=> {1=>1, 2=>1, 3=>1, 4=>1, 5=>1}

num = 5

assign_num = 0
lights_to_hash = []

loop do 
  assign_num += 1
  p assign_num
  sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
  #=> ["light1", "1"]
  lights_to_hash << sub_arr
  break if assign_num == num
end

lights_to_hash

lights_to_hash.to_h

light_number_and_state = lights_to_hash.to_h 
=> {"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}




























populate hash ** ** * refactor for symbols

light_number_and_state
=> {1=>1, 2=>1, 3=>1, 4=>1, 5=>1}

num = 5

assign_num = 0
lights_to_hash = []

loop do 
  assign_num += 1
  p assign_num
  sub_arr = ("light_num 1".gsub(/_num/) { |char| char = assign_num }).split(' ')
  #=> ["light1", "1"]
  lights_to_hash << sub_arr
  break if assign_num == num
end

lights_to_hash

lights_to_hash.to_h

light_number_and_state = lights_to_hash.to_h 
=> {"light1"=>"1", "light2"=>"1", "light3"=>"1", "light4"=>"1", "light5"=>"1"}



5 walks
5 toggles
12345
24
135
24
135


togle lights
rules at the top




oiutput *******************************
light_number_and_state = {1=>1, 2=>0, 3=>1, 4=>0, 5=>1}

output_array = []

light_number_and_state.each do |key,value|
  output_array << key if value == 1  
end   

output_array
=> [1, 3, 5]


array of integers output
array of integers ouptut 
the output is an array of integers
the ouptut is an array of integers
the output is an array of integers
the output is an array of integers
the output is an array of integers




populate an array with the lights on with (n) 1

lights = Array.new(num, 1)

lights
=> [1, 1, 1, 1, 1]

ON = ().abs
OFF= -light_number






When I toggle the light, it will be in one of 2 states
on or off

when I toggle it
  if it is on, greater than 0, ? OFF : ON   => OFF 


lights[1] > 0 ? OFF : ON





populate the array with the lights on
lights = Array.new(num, 1)
=> [1, 1, 1, 1, 1]

lights.unshift("light number sync")
=> ["light number sync", 1, 1, 1, 1, 1]


["light number sync", 1, 0, 1, 0, 1]


lights[1] > 0 ? OFF : ON


even walk, multiple of 2
odd walk multiple of 3



even walk, 2,4
  use the multiple of 2 .each

toggle multiple of 2
  update the multiple of 2 index values
  lights.each do |idx|
    if idx % 2 = 0 
    if idx is a multiple of 2
    toggle the idx
    else
    idx
  end



round 1: every light is turned on

2nd walk, even, multiple of 2
2,4,
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
["light number sync", 1, 0, 1, 0, 1]


3rd walk, odd multiple of 3,6,9
3
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
["light number sync", 1, 0, 0, 0, 1]

4th walk, even
4,8 Multiple of 4?
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
["light number sync", 1, 0, 0, 1, 1]


5th walk, multiples of 5
5,10
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
["light number sync", 1, 0, 0, 1, 0]




num is the number of lights and walks
num populates the Array.new lights array with num lights on, [1,1,1,1...
num walks determines the multiple to 

walk 2    2,4,6,8,10
          3,6,9
          4,8
          5,10





populate the array with the lights on

num = 10
walks = num
walks = 10
walks start at 2

lights = Array.new(num, 1)
=> [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

lights
=> [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

lights.unshift("light number sync")
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

walk loop, 
lights.map!  toggle multiple of walk number 2
lights.map!  toggle multiple of walk number 3

walk = 2
loop do 
                  index locations 2,4,6 toggle
                  get index location and % 2
                  get index value and toggle or not

  lights.map! do |index_location|
    if idx_location % walk    index 2 % 2 == 0 toggle value at location
      "toggle"
    else
      idx  do not update value at index location 
    end
    break if walk > num
    walk += 1
  end




iterate through the array
use the walk number as the multiple variable
2nd walk is multiple 2

loop through each walk
add 1 after each walk
use the updated walk value in lights.each
toggle the lights 
  if idx % 2 == 0 
    toggle
  else
    idx
  end


walks start at 2 because walk one has already been done and all the lights are on by 
default






















the numbers in the array are either 1 or 0.
the index number of the lights array will determine the light number

the light number will be used by .each to toggle the multiples
index number 2 4 6 8 10 will be toggled to 0 on the first walk

after the last walk, the index locations that have the value 1 will be used 
in an array to output the lights that are on

index has value? 1 
put that index number in an array


and for the return array
and





populate the array with the lights on

num = 10
walks = num
walks = 10
walks start at 2

lights = Array.new(num, 1)
=> [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

lights
=> [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

lights.unshift("light number sync")
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

walk loop, 
lights.map!  toggle the values in the index locations that are multiples of 2

.values_at(1, 3, 5)          # => ["b", "d", "f"]



walk = 2
loop do 
                  index locations 2,4,6 toggle
 .map 
  lights.map! do |index_location|
    if idx_location % walk    index 2 % 2 == 0 toggle value at location
      "toggle"
    else
      idx  do not update value at index location 
    end
    break if walk > num
    walk += 1
  end




iterate through the array
use the walk number as the multiple variable
2nd walk is multiple 2

loop through each walk
add 1 after each walk
use the updated walk value in lights.each
toggle the lights 
  if idx % 2 == 0 
    toggle
  else
    idx
  end


walks start at 2 because walk one has already been done and all the lights are on by 
default



a multiple is 
2 + 2 + 2+ 2+ 2

2,4,6,8,10

walk = 2

multiple = walk

walk = 2
walk 3
walk 4
walk 5
walk 6
walk 7 
walk 8
walk 9
walk 10

outer loop to increment the walk number      2 .. 10  walk += 1
  walk = 2


  multiple = walk  # 2
  inner loop for the index number to update
  # multiple is 2
  # if lights[] 
  if lights[multiple] is 1 then 0
  if lights[multiple] is 0 then 1
  multiple += walk # 4,6,8,10
  break if multiple > walk

  multiple logic
      walk = 2
      => 2
      multiple = walk
      => 2
      multiple += walk
      => 4
      multiple += walk
      => 6
      multiple += walk
      => 8
      multiple += walk
      => 10
    end
    
    break if walk == 10
    walk += 1 # 3

  end


**

populate the array with the lights on

num = 10
walks = num
walks = 10
walks start at 2

lights = Array.new(num, 1)

lights
=> [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

lights.unshift("light number sync")
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

**




a multiple is 
2 + 2 + 2+ 2+ 2

2,4,6,8,10

walk = 2

multiple = walk

walk = 2
walk 3
walk 4
walk 5
walk 6
walk 7 
walk 8
walk 9
walk 10

outer loop to increment the walk number      2 .. 10  walk += 1

  walk = 2 # second walk
  multiple = walk # 2 to access index 2 of lights[2]

  loop do # increment walk by 1 each loop


  # inner loop for the index number to update
  # multiple is 2
  # if lights[] 
  loop do 

    if lights[multiple] is 1 then 0
    if lights[multiple] is 0 then 1

  multiple += walk # 4,6,8,10
  break if multiple > walk

  multiple logic
      walk = 2
      => 2
      multiple = walk
      => 2
      multiple += walk
      => 4
      multiple += walk
      => 6
      multiple += walk
      => 8
      multiple += walk
      => 10
    end
    
    break if walk == 10
    walk += 1 # 3

  end



toggle logic

lights
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
if lights[2] == 1
  lights[2] = 0
else  
  lights[2] = 1
end  
=> 0
lights
=> ["light number sync", 1, 0, 1, 1, 1, 1, 1, 1, 1, 1]


lights
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
walk = 2
=> 2
multiple = walk
=> 2
if lights[multiple] == 1
  lights[multiple] = 0  
else  
  lights[multiple] = 1  
end  
=> 0
lights
=> ["light number sync", 1, 0, 1, 1, 1, 1, 1, 1, 1, 1]








num = 10
lights = Array.new(num, 1)

lights
=> [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

lights.unshift("light number sync")
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]



















num = 10
lights = Array.new(num, 1)
lights.unshift("light number sync")



walk = 2
multiple = walk
loop do
  if lights[multiple] == 1
    lights[multiple] = 0  
  else  
    lights[multiple] = 1  
  end
  break if multiple == num # 2,4,6.8.10
  multiple += walk
  break if multiple > num 
end

lights # after walk 2, multiple of 2 walk
# => ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]



walk = 3
multiple = walk # 3
loop do
  if lights[multiple] == 1 # lights[3,6,9]
    lights[multiple] = 0  
  else  
    lights[multiple] = 1  
  end
    # multiple 3 6 9
  multiple += walk 
  break if multiple >= num
end

lights 


walk = 4
multiple = walk # 3
loop do
  if lights[multiple] == 1 # lights[3,6,9]
    lights[multiple] = 0  
  else  
    lights[multiple] = 1  
  end
    # multiple 3 6 9
  multiple += walk 
  break if multiple >= num
end

lights 


walk = 5
multiple = walk # 3
loop do
  if lights[multiple] == 1 # lights[3,6,9]
    lights[multiple] = 0  
  else  
    lights[multiple] = 1  
  end
    # multiple 3 6 9
  multiple += walk 
  break if multiple >= num
end

lights 


def right(num)
num = 10
lights = Array.new(num, 1)
lights.unshift("light number sync")



walk = 2
multiple = walk
loop do
  if lights[multiple] == 1
    lights[multiple] = 0  
  else  
    lights[multiple] = 1  
  end
  break if multiple == num # 2,4,6.8.10
  multiple += walk
  break if multiple > num 
end

lights
=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]



walk = 3
multiple = walk
loop do
  if lights[multiple] == 1
    lights[multiple] = 0  
  else  
    lights[multiple] = 1  
  end
  break if multiple == num # 2,4,6.8.10
  multiple += walk
  break if multiple > num 
end

lights
=> ["light number sync", 1, 0, 0, 0, 1, 1, 1, 0, 0, 0]
























num = 3
lights = Array.new(num, 1)
lights.unshift("light number sync")

walk = 2
multiple = 2

loop do

  loop do
    if lights[multiple] == 1
      lights[multiple] = 0  
    else  
      lights[multiple] = 1  
    end
    break if multiple == num # 2,4,6.8.10
    multiple += walk
    break if multiple > num 
  end

break if walk = num
  walk += 1 
          break if walk = num
end










lights 

can this be done recursively


one method to perform the swithch logic
  return lights if walk is equal to 10


def recusion_walk(walks_down_the_hall)
  return lights if walks is == 1


walkd down the hall again  recursion_walk(walks_down_the_hall - 1)






    walks_down_the_hall - recursion_walk(walks_down_the_hall)




recursion is a reverse loop so starting with 10
on the 10th walk turn all the lights on

def recurrsion_walk(number_of_walks_and_lights)
  if walk == number_of_lights_walks return
    return lights if number_of_walkd





on the first walk, all the lighs are on
return the lights array

["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]





def my_recur (stn)
    puts stn # 5
    if stn < 10
    my_recur (stn * 2)
    end
end

def my_recur (walks)
    puts stn if stn < 10
    return lights if walks == 1 
    if walks is not == 1
    my_recur
    my_recur (stn * 2)
    end
end



["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
lights

=> [['walk number',1], 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

def my_recur (walks)
    puts stn if stn < 10
    rreturn lights if lights[0][1] == 1
    lights[0][1] += 1
    my_recur
    my_recur (stn * 2)
    end
end


lights[0][1] += 1
=> 2
lights
=> [["walk number", 2], 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


second walk toggle on walk number
2,4,6
3,6,9
4,8,
5,10
6
7
8
9
10



walk = 2
multiple = 2

loop do

  loop do
    if lights[multiple] == 1
      lights[multiple] = 0  
    else  
      lights[multiple] = 1  
    end
    break if multiple == num # 2,4,6.8.10
    multiple += walk
    break if multiple > num 
  end

break if walk = num
  walk += 1 
          break if walk = num
end




walks and toggles

walks are respectivly lights to toggle
2
246

3 6 9


walk 

walk + walk

walk + walk + walk

walk + walk + walk + walk


walk + walk + walk + walk + walk

each walk toggle corresponding lights 

array of lights to toggle

[2,4,6,8,10]

pass the array into a method that toggles the index locations of the array passed in

[2,4,6,8,10].each_index do |integer_at_index_0|

  lights[integer_at_index_0] = 0
end

2nd walk 
lights
=> ["light number sync", 1, 0, 1, 1, 1, 1, 1, 1, 1, 1]
[2,4,6,8,10].each do |idx|
  lights[idx] = 0
end  
=> [2, 4, 6, 8, 10]
lights
=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]

3rd walk

[3,6,9].each do |idx|
  lights[idx] = 0
end  





*************************************************LIGHT LOGIC
def light_logic(light_array,lights_to_toggle_array)
  
  # [3,6,9].each do |idx|  
  #   lights[idx] = 0  
  # end    
  
  lights_to_toggle_array.each do |idx|  
        
    if light_array[idx] == 0    
      light_array[idx] = 1      
    else      
      light_array[idx] == 1      
      light_array[idx] = 0      
    end      
  end    
  light_array  
end    
=> :light_logic

lights = ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

light_logic(lights,[2,4,6,8,10])
=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]
light_logic(lights,[3,6,9])
=> ["light number sync", 1, 0, 0, 0, 1, 1, 1, 0, 0, 0]
light_logic(lights,[4,8])
=> ["light number sync", 1, 0, 0, 1, 1, 1, 1, 1, 0, 0]
light_logic(lights,[5,10])
=> ["light number sync", 1, 0, 0, 1, 0, 1, 1, 1, 0, 1]
light_logic(lights,[6])
=> ["light number sync", 1, 0, 0, 1, 0, 0, 1, 1, 0, 1]
light_logic(lights,[7])
=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 1, 0, 1]
light_logic(lights,[8])
=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 0, 0, 1]
light_logic(lights,[9])
=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 0, 1, 1]
light_logic(lights,[10])
=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 0, 1, 0]






def light_logic(light_array,lights_to_toggle_array)

  # [3,6,9].each do |idx|
  #   lights[idx] = 0
  # end  

  lights_to_toggle_array.each do |idx|
    
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end  


lights = ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

light_logic(lights,[2,4,6,8,10])
light_logic(lights,[3,6,9])
light_logic(lights,[4,8])
light_logic(lights,[5,10])
light_logic(lights,[6])
light_logic(lights,[7])
light_logic(lights,[8])
light_logic(lights,[9])
light_logic(lights,[10])




With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is 


[1, 4, 9]


def light_logic(light_array,lights_to_toggle_array)

  lights_to_toggle_array.each do |idx|
    
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end  


lights = ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

light_logic(lights,[2,4,6,8,10])
light_logic(lights,[3,6,9])
light_logic(lights,[4,8])
light_logic(lights,[5,10])
light_logic(lights,[6])
light_logic(lights,[7])
light_logic(lights,[8])
light_logic(lights,[9])
light_logic(lights,[10])

*******************


lights to toggle

2

3
4
5
6
7
8
9
10

toggle_array = []

put the multiples of 2 up to 10

walk = 2


counting the walks 2 ..10
appending multiples of walk  to toggle_array

walk_number = 2
walk_multiple = walk

loop do # walk loop 2 .. 10

  loop do # create the toggle array 
    toggle_array << walk # 2





  break if walk == 10
walk += 1 # => 3
end




def walk(2)
  light_logic(lights, toggle_array)
end

def make_toggle_array(walk_number,total_walks)
  toggle_array = []
  multiple = walk_number
  loop do
    toggle_array << multiple
    break if multiple == total_walks
   multiple += walk_number
 end
 toggle_array
end


make_toggle_array(2,10)
=> [2, 4, 6, 8, 10]


def increment_walk_number(num)
  walk_number = 2
  10

  loop do
                          2        10
    make_toggle_array(walk_number,num)
    # make_toggle_array(2,10)
    # => [2, 4, 6, 8, 10]

    light_logic(lights,make_toggle_array(walk_number,num))



=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 0, 1, 0]


def make_toggle_array(walk_num,total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > 10
   multiple += walk_num
 end
 toggle_array
end




break if multiple + walk_number > 10

break if multiple + walk_number > 10





# Define a method to populate the light array 
                                             ****JMX
***POPULATE ARRAY 
def populate_light_array(num)
  num = 10
  lights = Array.new(num, 1)
  lights.unshift("light number sync")
end


populate_light_array(10)
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

                                            ****JMX

# method definition to take a walk number and total walks argument
# that returns an array containing the lights to toggle


*LIGHTS TO TOGGLE 


def make_toggle_array(walk_num,total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > 10
   multiple += walk_num
 end
 toggle_array
end

make_toggle_array 2,10
=> [2, 4, 6, 8, 10]
make_toggle_array 3,10
=> [3, 6, 9]
make_toggle_array 6,10
=> [6]
make_toggle_array 9,10
=> [9]
make_toggle_array 10,10
=> [10]



***TOGGLE LIGHTS

def light_logic(light_array,lights_to_toggle_array)

  lights_to_toggle_array.each do |idx|
    
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end
light_logic(lights,[10])
=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 0, 1, 0]

***************


# Extract index location where light value is 1 into an array

def lights_on (lights)
  on = []
  lights.map do |idx| 
    on << (index location number: 2,4,..) if idx == 1 
  end
  on
end


walk = 2

light_logic(lights,(make_toggle_array(2,10)) )


make_toggle_array(2,10)
=> [2, 4, 6, 8, 10]
make_toggle_array(3,10)
=> [3, 6, 9, 12]

how do I return an array with multiples up to 10
  of 2,3,4,5,6,7,8,9,10









***METHOD ASSEMBLY
n = 10
10 walks

def populate_light_array(num)
  num = 10
  lights = Array.new(num, 1)
  lights.unshift("light number sync")
end


*********populate_light_array(10)
**************=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


# upto loop 
  # each iteration
   # make a toggle array
    # toggle the lights array

# starting with walk 2
# upto n

2.upto(10){|walk_num| walk_num}
                        # 2
                        # 3
                        # 4          n
  def make_toggle_array(walk_num,total_walks)
    toggle_array = []
    multiple = walk_num
    loop do
      toggle_array << multiple
      break if multiple + walk_num > 10
     multiple += walk_num
   end
   toggle_array
  end

**********make_toggle_array(2,10)
**************=> [2, 4, 6, 8, 10]


                               #[2,4,6,8,10]    
  def light_logic(light_array,toggle_array)
    toggle_array.each do |idx|
      if light_array[idx] == 0
        light_array[idx] = 1
      else
        light_array[idx] == 1
        light_array[idx] = 0
      end
    end
    light_array
  end

end.2.upto(10)


light_logic(lights, [2, 4, 6, 8, 10])
=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]








***METHOD ASSEMBLY
n = 10
10 walks

def populate_light_array(num)
  num = 10
  lights = Array.new(num, 1)
  lights.unshift("light number sync")
end


*********populate_light_array(10)
**************=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


# upto loop 
  # each iteration
   # make a toggle array
    # toggle the lights array

# starting with walk 2
# upto n
       #10
2.upto(num){|walk_num| walk_num}
                        # 2
                        # 3
                        # 4          num
  def make_toggle_array(walk_num,total_walks)
    toggle_array = []
    multiple = walk_num
    loop do
      toggle_array << multiple
      break if multiple + walk_num > 10
     multiple += walk_num
   end
   toggle_array
  end

**********make_toggle_array(2,10)
**************=> [2, 4, 6, 8, 10]


                 # lights     #[2,4,6,8,10]    
  def light_logic(light_array,toggle_array)
    toggle_array.each do |idx|
      if light_array[idx] == 0
        light_array[idx] = 1
      else
        light_array[idx] == 1
        light_array[idx] = 0
      end
    end
    light_array
  end

********light_logic(lights, [2, 4, 6, 8, 10])
***************=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]




end.2.upto(10)











***METHOD ASSEMBLY

             10
def switches(num)
num = 10



def populate_light_array(num)
 num = 10
 light_array = Array.new(num, 1)
 light_array.unshift("light number sync")
 #replace with 
 # Array.new(num, 1).unshift("light number sync")
end

                                                                               10
************************************************lights = populate_light_array(num)



=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
lights
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


# upto loop 
  # each iteration
   # make a toggle array
    # toggle the lights array

# starting with walk 2
# upto n
       #10
2.upto(num){|walk_num| walk_num}
                                    # 2
                                    # 3
                                    # 4          num
    toggle_array = make_toggle_array(walk_num, num)

                        
  def make_toggle_array(walk_num,total_walks)
    toggle_array = []
    multiple = walk_num
    loop do
      toggle_array << multiple
      break if multiple + walk_num > 10
     multiple += walk_num
   end
   toggle_array
  end

                                                                     2        10
***********************************toggle_array = make_toggle_array(walk_num, num)

=> [2, 4, 6, 8, 10]
toggle_array
=> [2, 4, 6, 8, 10]


    light_state = light_logic(lights,toggle_array)


                 # lights     #[2,4,6,8,10]    
  def light_logic(light_array,lights_to_toggle_array)
    lights_to_toggle_array.each do |idx|
      if light_array[idx] == 0
        light_array[idx] = 1
      else
        light_array[idx] == 1
        light_array[idx] = 0
      end
    end
    light_array
  end

************************************light_state = light_logic(lights,toggle_array)

=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]
lights
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]



end# .2.upto(10)

light_state => ["light number sync", 1, 0, 0, 4, 0, 0, 0, 0, 1, 0]

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

***********************************













***METHOD ASSEMBLY

             10
def switches(num)
num = 10



def populate_light_array(num)
 num = 10
 light_array = Array.new(num, 1)
 light_array.unshift("light number sync")
 #replace with 
 # Array.new(num, 1).unshift("light number sync")
end

                                                                               10
************************************************lights = populate_light_array(num)



=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
lights
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


# upto loop 
  # each iteration
   # make a toggle array
    # toggle the lights array

# starting with walk 2
# upto n
       #10
2.upto(num){|walk_num| walk_num}
                                    # 2
                                    # 3
                                    # 4          num
    toggle_array = make_toggle_array(walk_num, num)

                        
  def make_toggle_array(walk_num,total_walks)
    toggle_array = []
    multiple = walk_num
    loop do
      toggle_array << multiple
      break if multiple + walk_num > 10
     multiple += walk_num
   end
   toggle_array
  end

                                                                     2        10
***********************************toggle_array = make_toggle_array(walk_num, num)

=> [2, 4, 6, 8, 10]
toggle_array
=> [2, 4, 6, 8, 10]


    light_state = light_logic(lights,toggle_array)


                 # lights     #[2,4,6,8,10]    
  def light_logic(light_array,lights_to_toggle_array)
    lights_to_toggle_array.each do |idx|
      if light_array[idx] == 0
        light_array[idx] = 1
      else
        light_array[idx] == 1
        light_array[idx] = 0
      end
    end
    light_array
  end

************************************light_state = light_logic(lights,toggle_array)

=> ["light number sync", 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]
lights
=> ["light number sync", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]



end# .2.upto(10)

light_state => ["light number sync", 1, 0, 0, 4, 0, 0, 0, 0, 1, 0]

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

***********************************









** ** ** * METHOD ASSEMBLY 



def populate_light_array(num)
 num = 10
 light_array = Array.new(num, 1)
 light_array.unshift("light number sync")
 #replace with 
 # Array.new(num, 1).unshift("light number sync")
end



def make_toggle_array(walk_num,total_walks)
    toggle_array = []
    multiple = walk_num
    loop do
      toggle_array << multiple
      break if multiple + walk_num > 10
     multiple += walk_num
   end
   toggle_array
  end




def light_logic(light_array,lights_to_toggle_array)
    lights_to_toggle_array.each do |idx|
      if light_array[idx] == 0
        light_array[idx] = 1
      else
        light_array[idx] == 1
        light_array[idx] = 0
      end
    end
    light_array
  end



             10
def switches(num)
num = 10
light_state = nil
                              #10
  lights = populate_light_array(num)

           #   2        2
  2.upto(num) do |walk_num| # walk_num

                    #                 2        10
    toggle_array = make_toggle_array(walk_num, num)

    light_state = light_logic(lights,toggle_array)

  end# .2.upto(10)

  light_state

  # extract lights on into an array

  # lights_on = light_state {index locations that have the value of 1}
end

switches 10

** ** ** *JMX


def populate_light_array(num)
 num = 10
 light_array = Array.new(num, 1)
 light_array.unshift("light number sync")
 #replace with 
 # Array.new(num, 1).unshift("light number sync")
end



def make_toggle_array(walk_num,total_walks)
    toggle_array = []
    multiple = walk_num
    loop do
      toggle_array << multiple
      break if multiple + walk_num > 10
     multiple += walk_num
   end
   toggle_array
  end




def light_logic(light_array,lights_to_toggle_array)
    lights_to_toggle_array.each do |idx|
      if light_array[idx] == 0
        light_array[idx] = 1
      else
        light_array[idx] == 1
        light_array[idx] = 0
      end
    end
    light_array
  end



             10
def switches(num)
num = 10
light_state = nil
                              #10
  lights = populate_light_array(num)

           #   2        2
  2.upto(num) do |walk_num| # walk_num

                    #                 2        10
    toggle_array = make_toggle_array(walk_num, num)

    light_state = light_logic(lights,toggle_array)

  end# .2.upto(10)

  light_state

  # extract lights on into an array

  # lights_on = light_state {index locations that have the value of 1}
end

switches 10





** ** ** *JMX


def populate_light_array(num)
 num = 10
 light_array = Array.new(num, 1)
 light_array.unshift("light number sync")
 #replace with 
 # Array.new(num, 1).unshift("light number sync")
end

def make_toggle_array(walk_num,total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > 10
    multiple += walk_num
  end
  toggle_array
end

def light_logic(light_array,lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end

def lights_left_on(arr)
  on = []
  arr.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

def switches(num)
  light_state = nil
  lights = populate_light_array(num)
  2.upto(num) do |walk_num|
    toggle_array = make_toggle_array(walk_num, num)
    light_state = light_logic(lights,toggle_array)
  end
  lights_left_on(light_state)
end

switches 10
=> ["light number sync", 1, 0, 0, 1, 0, 0, 0, 0, 1, 0]


*****************************************************EXTRACT LIGHTS ON





lights.each_with_index { |item, index|
  index if item == 1
}

lights_on




extract the lights that are on

    lights_on(lights)
def lights_on(light_array)

what index locations in the lights array have the value of 1

lights.map do |idx|
  


a = [ "a", "b", "c" ]
a.each_index {|x| print x }

lights.each_index do |idx|
# light_state_1 = []
# light_state_1 << idx if idx == 1
puts idx
end


lights.each_index do |idx|
# light_state_1 = []
# light_state_1 << idx if idx == 1
puts idx if idx 
end

evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
#=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}


lights_on = []

lights.each_with_index { |item, index|
  lights_on << index if item == 1
}

lights_on

                  (lights)
def lights_left_on(arr)
  on = []
  arr.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

******************************









** ** ** *JMX


def populate_light_array(num)
 #light_array = Array.new(num, 1)
 #light_array.unshift("light number sync")
 #replace with 
  Array.new(num, 1).unshift("light number sync")
end

def make_toggle_array(walk_num,total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    #break if multiple + walk_num > 10
    break if multiple + walk_num > total_walks
    multiple += walk_num
  end
  toggle_array
end

def light_logic(light_array,lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end

def lights_left_on(arr)
  on = []
  arr.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

def switches(num)
  light_state = nil
  lights = populate_light_array(num)
  2.upto(num) do |walk_num|
    toggle_array = make_toggle_array(walk_num, num)
    light_state = light_logic(lights,toggle_array)
  end
  lights_left_on(light_state)
end

*************************************************
















*************************************************JMX

def populate_light_array(num)
  Array.new(num, 1).unshift("light number sync")
end

def make_toggle_array(walk_num,total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > total_walks
    multiple += walk_num
  end
  toggle_array
end

def light_logic(light_array,lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end

def lights_left_on(arr)
  on = []
  arr.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

def switches(num)
  light_state = nil
  lights = populate_light_array(num)
  2.upto(num) do |walk_num|
    toggle_array = make_toggle_array(walk_num, num)
    light_state = light_logic(lights,toggle_array)
  end
  lights_left_on(light_state)
end

*************************************************





def light_logic(light_array,lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] == 1
      light_array[idx] = 0
    end
  end
  light_array
end


# bad
if foo
  bar = 1
else
  bar = 2
end
           foo
if light_array[idx] == 0
           bar
      light_array[idx] = 1
    else
            bar
      light_array[idx] = 0
    end


# good
bar = if foo
        1
      else
        2
      end





light_array[idx] = if light_array[idx] == 0
  1
else
  0
end


def light_logic(light_array,lights_to_toggle_array)

  lights_to_toggle_array.each do |idx|
    
    light_array[idx] = if light_array[idx] == 0
     1
    else
     0
    end

  end

  light_array
end





if light_array[idx] == 0
      light_array[idx] = 1
    else
      light_array[idx] = 0
    end












def light_logic(light_array,lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    light_array[idx] = if light_array[idx] == 0
                         1
                       else
                         0
                       end
  end
  light_array
end

*************************************************JMX
# Populate an array with n lights
def populate_light_array(num)
  Array.new(num, 1).unshift("light number sync")
end

# Create an array of lights to toggle on each walk
def make_toggle_array(walk_num, total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > total_walks
    multiple += walk_num
  end
  toggle_array
end

# Toggle the lights based on the return value of make_toggle_array
def light_logic(light_array, lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    light_array[idx] = if light_array[idx] == 0
                         1
                       else
                         0
                       end
  end
  light_array
end

# Create an array of the lights left on after the last walk
def lights_left_on(arr)
  on = []
  arr.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

def lights_on(num)
  light_state = nil
  lights = populate_light_array(num)
  2.upto(num) do |walk_num|
    toggle_array = make_toggle_array(walk_num, num)
    light_state = light_logic(lights, toggle_array)
  end
  lights_left_on(light_state)
end

p lights_on(1000)
[1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
=> [1,
 4,
 9,
 16,
 25,
 36,
 49,
 64,
 81,
 100,
 121,
 144,
 169,
 196,
 225,
 256,
 289,
 324,
 361,
 400,
 441,
 484,
 529,
 576,
 625,
 676,
 729,
 784,
 841,
 900,
 961]




********compressed

def make_toggle_array(walk_num, total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > total_walks
    multiple += walk_num
  end
  toggle_array
end

def light_logic(light_array, lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    light_array[idx] = if light_array[idx] == 0
                         1
                       else
                         0
                       end
  end
  light_array
end

def lights_on(num)
  light_state = nil
  on = []
  lights = Array.new(num, 1).unshift("light number sync")
  2.upto(num) do |walk_num|
    toggle_array = make_toggle_array(walk_num, num)
    light_state = light_logic(lights, toggle_array)
  end
  light_state.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

















