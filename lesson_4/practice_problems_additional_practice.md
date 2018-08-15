


1. correct

```ruby

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |idx, flintstones_hash|
  flintstones_hash[idx]= flintstones.index(idx)
end
 
# => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

```

2. correct

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# my way

ages_array = ages.values
=> [32, 30, 5843, 10, 22, 237]

age = 0
ages_array.each do |age_value|
  age += age_value
end
=> [32, 30, 5843, 10, 22, 237]

age
=> 6174

# Their way

ages.values.inject(:+)

# inject method which says "apply the + operator to the accumulator and object parameters
# of inject.



```

3. correct
```ruby


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }


ages.delete_if { |_, age| age > 100}
#=> {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
ages
#=> {"Herman"=>32, "Lily"=>30, "Eddie"=>10}


ages.keep_if { |_, age| age < 100 }
# => => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}

```

4. correct
```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

10
```

5. correct
```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones.bsearch_index {|x| x.start_with? "Be"}

#=> 3

flintstones.index { |name| name[0,2] == "Be"}


#=> 3
```

6.
```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones.map {|idx| idx[0,3]}
=> ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]
```

7 correct
```ruby
statement = "The Flintstones Rock"

letters = statement.chars

count_hash = {}

loop do 

  current_element = letters.pop

  if letters.empty? 
    break  

  elsif count_hash.has_key?(current_element) 
        #does count_hash have key k? true
    count_hash[current_element] = count_hash.fetch(current_element) + 1
    # count_hash[current_element] k add current_element value + 1 = 

  elsif # if the key is not there yet then add the kv pair
        # count_hash
    count_hash[current_element]= 1
  end

  count_hash.delete_if{|k,v| k == " " }
  
end

count_hash


# launch school solution
result = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
```
8a - review
8b - correct
```ruby





#correct
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

1
[1,2,3]
2
[1,2]


1
2
[1,2]
```

9 correct

```ruby
words = "the flintstones rock"

first_gem = words.split.each {|element| element.capitalize!}.join(' ')
=> "The Flintstones Rock"
```

10
```ruby
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+

{
 "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } 
}

























