


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

3.





























