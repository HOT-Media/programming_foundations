


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

flintstones.map do |idx|
  element_length = idx.length
  if idx.length > 3 
    idx.slice(3..element_length)
end
end






















