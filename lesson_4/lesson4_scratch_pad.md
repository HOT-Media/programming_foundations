2

Given an array of strings representing integers, iterate through all of the items in the array. 

If the integer value of the string is odd add it to a new array of odd integer strings.

 Once iteration is complete the new array should contain all of the odd integer strings from the original array.

 return a new array
```ruby

   .map


   numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']

odd_numbers = []

number = 0


                    array.size
until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end


numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end



```





3
a yes - correct 
```ruby

numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size   # 7

loop do
  number = numbers[-counter] # number = numbers[0] index 0 - 7
  for num in 1..number # for num in 1 .. 7 puts num 1...7
    puts num
  end

  break if counter == 1
  counter -=1
end




b no - correct
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = 0

loop do
  number = numbers[counter] # 7 
  counter = 0

  loop do
    counter += 1 #1 2 3 4 5 6
    puts counter # 1

    break if counter >= number #7
  end

  counter += 1
  break if counter >= numbers.size
end


c yes - correct

numbers = [7, 3, 5, 2, 1, 8, 4]

for number in numbers
  counter = 0 # 0

  loop do
    counter += 1 #1
    puts counter # 1234567

    break if counter >= number #7
  end 

end



d yes - correct
numbers = [7, 3, 5, 2, 1, 8, 4]

numbers.each do |number| 
  counter = 0  # this iteration 
  
  number.times do 
    counter += 1 
    puts counter   
  end


end

```

4 - correct
```ruby

sentence = 'The sky was blue'

              
change_case(sentence, :snake) # => 'the_sky_was_blue'



def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end





def snake(str)

  words = str.split
  current_word = 1 # .downcase! starts with index element 1, sky


  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

sentence = 'The sky was blue'

snake(sentence)

def snake(str)

  words = str.split
  current_word = 0 # change current word to index 0

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end



sentence = 'The sky was blue'

  snake(sentence)
=> "the_sky_was_blue"
```

5 - correct
```ruby
def camel(str)
  words = str.split(' ')
  counter = 0

  while counter > words.size # comparison operator greater than should be less than
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end


sentence = 'The sky was blue'
camel(sentence) # => 'TheSkyWasBlue




def camel(str)
  words = str.split(' ')
  counter = 0

  while counter < words.size # comparison operator greater than should be less than
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end


sentence = 'The sky was blue'
camel(sentence) # => 'TheSkyWasBl

```

6 - correct

```ruby


def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word].upcase!
  end

  words.join('_')
end

sentence = 'The sky was blue'
upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'

# =>  "The sky was blue"






def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    words[current_word].upcase!
    current_word += 1
    break if current_word == words.size

    
  end

  words.join('_')
end

sentence = 'The sky was blue'
upper_snake(sentence)


```

10
```ruby
[1, 2, 3, 4, 5]. do |num|
  num + 1       # first iteration index 0, is 2
end
# => []
.each returns the original array
.map returns a new array with the new idx +1
.select returns a new array with anything that is not false or nil 

[1, 2, 3, 4, 5].some_method do |num|
  num + 1
end





['green', 'blue', 'red'].select do |word|
  puts word
  word.upcase
end
# => ['GREEN', 'BLUE', 'RED']
```

```ruby

                          hash.
{a: 1, b: 2, c: 3, d: 4, e: 5}.each do |_, num|
  plus_one = num + 1   # plus one = value + 1
  # puts value    value + 1
  puts "#{num} plus 1 is #{plus_one}"
end




# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}




pets = ['cat', 'parrot', 'dog', 'fish']
pets.map do |pet|
  pet.size == 3
end

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
flavors.reject { |flavor| puts flavor }

block returns
nil
nil
nil





Returns a new array containing the items in self for which the given block is not true. 



```

Given an array numbers which contains both odd and even integers;

create two new arrays, 

odd_numbers which contains the odd integers from the original array 
and even_numbers which contains the even integers.

odd_array = []
even_array = []
```ruby
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]



for number in numbers
  next if number.odd?
  even_numbers << number
end

for number in numbers
  next unless number.odd?
  odd_numbers << number
end



Given the following hash which contains
 keys representing countries and
  values representing the capital cities of those countries,
   return a new hash
    containing only the key-value pairs where the country begins with the letter 'B'.


countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}


h = { "a" => 100, "b" => 200, "c" => 300 }
h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}



countries_and_capitals.select{|k,v| k == 'B'}


countries_and_capitals.select{|k,v| k.start_with?('B')}


countries_and_capitals.each_with_object({}) do |(k, v), obj|
  obj[k] = v if k.chr == 'B'
end



def select_countries(hsh)
  sub_set = {}

  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

select_countries(countries_and_capitals)




def begins_with_b(string)
  string[0] == 'B'
end

countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end
```



21
```ruby

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]




counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end





usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end





usable_leads
=> [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true},
 {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]
   
get users that have logged in within the last 60 days , true on mailing list and capitalize their names








mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
```











*****************************************************************************************************

Missed quiz questions:

1.

Given an array of strings representing integers, iterate through all of the items in the array.

If the integer value of the string is odd add it to a new array of odd integer strings.

Once iteration is complete the new array should contain all of the odd integer strings from the original array.

```ruby
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size # keep iterating until number == 9

  # number is the counter
  # counter increments  1,2,3,4
  if number.to_i.odd?  #  means if the NUMBER COUNTER is odd
  << numbers[number] # means << the element at number counter index even or odd because:
                     # number is being compared to odd or even not numbers.

  odd_numbers << numbers[number] if number.to_i.odd? 
  number += 1
end





```

9
Read the below statements regarding each and identify all the statements which are correct.

#### A - I answered yes which is incorect because the iteration can be stopped with break
If you call each with a block on an array that contains seven elements, the block will always execute seven times.

B I answered no and that is correct
When each is called with a block on a hash, it returns an array.

C I answered yes and that is correct
When each is called with a block on an array, it returns the array object that it was called on.

D I answered no and that is correct
When called with a block, the Array#each method considers the truthiness of the block's return value.


10
Identify all the code samples which are examples of selection.

Your Answer
A I answered yes this is selection, but it performs a transformation new_arr << num * 2
```ruby
arr = [1, 2, 3, 4, 5]
counter = 0

new_arr = []

loop do
  num = arr[counter]
  if num >= 3
    new_arr << 0
  else
    new_arr << num * 2
  end

  counter += 1
  break if counter == arr.size
end
```


11
Identify all the code samples which are NOT examples of transformation.

I thought this was transformation because of the star.downcase, but it's not transformation because
for loop returns the object it was called on, stars_1, so this is not transformation 
```ruby 

def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
```


18
Identify all of the code implementations that correctly meet the following set of requirements.

Given an array numbers which contains both odd and even integers; create two new arrays, 

odd_numbers which contains the odd integers from the original array
and
even_numbers which contains the even integers.


I answered yes but I immediately figured out what was wrong in IRB and why: partition returns two sub arrays, the first is an array containing the elements evaluated to true, in this case, number.even? was the first array, changing number.even? to number.odd? would return:

=> [[1, 5, 7, 13], [2, 4, 8, 10, 14]]

```ruby
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.even?
                            end
                            ```



20
Wrong:
I was way way too tired, had a headache, and just wanted to be done.
I couldnt even figure out what the first legacy block did, an I gave up on figuring that out because I thought it was irrelevant code or what ever. 

I actually did fall into the "legacy code attitude":
" I've been assigned to solve this issue which relates to some nasty old code and old code gets on my nerves because it's outdated and written wrong and should be thrown away because it sucks"

I half ass checked the value of full_names, names and some other local variables initialized within the loop do. they all retured exceptions or what ever so I gave up on the first block dismissing it as nonsense.

I figured out that the second block was supposed to return a list of usable leads but I still was foggy about how the case was changed.

I did understand what the conditions were for determining the usable leads hash, but I had no idea where to start because my concept load capacity was too low to handle the mailing_campaign_leads array, how it is passed in, what happens to it, and which lines of code do what, so I bailed, gave the replacement code options a quick glance, I did think that replacement a was missing something, but I was foggy on what so I didn't choose a, then I chose b,c,d for whatever reason, a guess because I was tired and I wanted to go to bed. 

Today:

1. Figure out what the legacy code does.
2. Understand how it does it
3. Identify where Public Instance Methods would improve the code.
4. Preserve everything that falls in the catagory of "things that never change" about programming.
5. Trim the collection down to something I can work with while keeping the structure intact
+ loose the long email and shorten it for diagnostics


```ruby

### this block transforms the full name of the lead to .capitalize
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

:name=>"JANE WILLIAMS"
to
:name=>"Jane Williams"



# This block of code returns an array named: usable_leads containing leads meeting the criteria:

# :days_since_login < 60 and :mailing_list == true


usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

# The full name is correctly formatted and the array contains the leads meeting the criteria
usable_leads
=> [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

**********
#  mailing_campaign_leads is an array containing 4 elements
# each element is a hash
# the kv pairs are:
# :name  :email   :days_since_login :and mailing_list
# after running the first code block the :full_name is formatted correctly .capitalize
# a local variable usable_leads is assigned to an empty Array and is initialized outsidt the second block
# the second block returns usable_leads containing the Hashes that meet the 60 and last login criteria


# first legacy block line by line 


counter = 0 # counts the loops starting with 0

loop do
  break if counter == mailing_campaign_leads.size #  mailing_campaign_leads.size = 4 break if 4
  full_name = mailing_campaign_leads[counter][:name] # initialize full_name local variable
                                                     # assign it to:
                                                     # index 0 of  mailing_campaign_leads
                                                     # which is the first
  names = full_name.split                        # Keep

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize       # Keep

    names_counter += 1                           # Keep
  end

  capitalized_full_name = names.join(' ')        # Keep
  mailing_campaign_leads[counter][:name] = capitalized_full_name # Keep

  counter += 1
end

:name=>"JANE WILLIAMS"
to
:name=>"Jane Williams"






usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

usable_leads
=> [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]



***********
Proposed sulutions

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'el@', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'mr@', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jw@', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ap@', days_since_login: 22, mailing_list: true}
]

A 
#this code does not output the correct case

mailing_campaign_leads.each do |lead|
# returns a new array of lead .capitalize but only capitalizes the first name not the last name
  lead[:name].capitalize!
end

mailing_campaign_leads.select! do |lead| 
  lead[:days_since_login] < 60 && lead[:mailing_list]
end




B 
# this works but there is a glitch regarding 59 or 60 days
# the glitch will only show up if someone has logged in exactly 60 days ago 
#the <= allows people that have logged in 60 days ago, and the marking team wants 59
# the 60 days glitch would show up in the marketing teams analytics 

mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  # names = {name: 'Emma Lopez', email: 'el@', days_since_login: 423, mailing_list: true}
  # 'Emma Lopez'
  # => names this iteration 
  # ["Emma", "Lopez"].map! { |name| name.capitalize }
  # => ["Emma", "Lopez"]
  names.map! { |name| name.capitalize }

  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.keep_if do |lead|
  lead[:days_since_login] <= 60 && lead[:mailing_list]
   # <= means 60 as well, the marketing team wants less than 60 which is 59
end




C

mailing_campaign_leads.each do |lead|
  names = lead[:name].split # ['Emma', 'Lopez']
  
  # overwrite the original :name key with    [:name] = return value of :
  # Overwrite :name  [:name] = return value of :

  lead[:name] = names.map { |name| name.capitalize }.join(' ') # this works => "Emma Lopez"
   
end # .map mutates the caller so :name is capitalized even though its not capitalize!



{name: 'Emma Lopez', email: 'el@', days_since_login: 423, mailing_list: true},

[] not true

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login] # 423
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list # change last_login > 59 to < 60
end


usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login] # 423
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 || !subscribed_to_list
end





D

mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end




























