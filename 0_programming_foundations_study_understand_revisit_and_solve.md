
## Enumerable .inject




Create a hash that expresses the frequency with which each letter occurs in this string:
.scan
```ruby
statement = "The Flintstones Rock"
result = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end


# my solution:

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
```

What is the output:
```ruby

numbers = [1, 2, 3, 4]

numbers.each do |number|
  p number
  numbers.shift(1)
end

# My solution - wrong
1
2
3
4
[]



To better understand what is happening here, we augment our loop with some additional "debugging" information:

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end
The output is:

"0  [1, 2, 3, 4]  1"
"1  [2, 3, 4]  3"
From this we see that our array is being changed as we go (shortened and shifted), and the loop counter used by #each is compared against the current length of the array rather than its original length.

In our first example, the removal of the first item in the first pass changes the value found for the second pass.

In our second example, we are shortening the array each pass just as in the first example...but the items removed are beyond the point we are sampling from in the abbreviated loop.

In both cases we see that iterators DO NOT work on a copy of the original array or from stale meta-data (length) about the array. They operate on the original array in real time.



```


```ruby
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+

add "age_group" => "adult" to the respective hash
{
 "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } 
}


correct solution:

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end




******my work

x = {"age"=>32, "gender"=>"male"}

in m.each do key_is_name, value_is_specs |x|

   x.values_at("age")
=> [32]
   x.fetch("age")
=> 32
   x.fetch("age") <= 17
=> false




m.each do |key_is_name, value_is_specs|

  if  value_is_specs.fetch("age") <= 17
    puts 'almost there kid'
    m["age_group"] = "kid"
  elsif value_is_specs.fetch("age") >= 65
    puts 'almost there old man'
    m["age_group"] = "senior"
  else
    puts 'almost there midlife crisis'
    m["age_group"] = "adult"
  end

end




m.each do |key_is_name, value_is_specs|

  if  value_is_specs.fetch("age") <= 17
    puts 'almost there kid'
    m["age_group"] = "kid"
  elsif value_is_specs.fetch("age") >= 65
    puts 'almost there old man'
    m["age_group"] = "senior"
  else
    puts 'almost there midlife crisis'
    m["age_group"] = "adult"
  end

end







m.each_pair do |key_is_name, value_is_specs|
  kid_hash = {}
  adult_hash = {}
  senior_hash = {}

  if  value_is_specs.fetch("age") <= 17
    puts 'almost there kid'
    kid_hash["age_group"] = "kid"
  elsif value_is_specs.fetch("age") >= 65
    puts 'almost there old man'
    adult_hash["age_group"] = "senior"
  else
    puts 'almost there midlife crisis'
    senior_hash["age_group"] = "adult"
  end

end


munsters.each do |key_is_name, value_is_specs|

  case age

    when value_is_specs.fetch("age") >= 17
    puts 'almost there kid'
    key_is_name["age_group"] = "kid"
    end

end

{
 "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" }




case age

    when value_is_specs.fetch("age") <= 17
    puts 'almost there kid'
    key_is_name["age_group"] = "kid"
    end

****** end of my work


```









Small Problems:

Easy 4:

Exercise:

2, What century is that

https://launchschool.com/exercises/d6a8f167

My solution:
```ruby
def century(year)
  cent = ''
  suffix = ''
  year_array = [[1],[1,0],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9]]
  year_array2 = [[2],[2,0],[2,2],[2,3],[2,4],[2,5],[2,6],[2,7],[2,8],[2,9]]
  year_array3 = [[3],[3,0],[3,2],[3,3],[3,4],[3,5],[3,6],[3,7],[3,8],[3,9]]

  if year.digits[0,2] == [0,0]
    cent = year/100
  elsif (1..100).include? year
    cent = 1
  else
    cent = year.to_i / 100 + 1
  end

  if year_array.include?cent.digits[0,2] 
    suffix = 'st'
  elsif  year_array2.include?cent.digits[0,2]
    suffix = 'nd'
  elsif year_array3.include?cent.digits[0,2]
    suffix = 'rd'
  elsif (4..9).include? cent
    suffix = 'th'
  elsif [[4,1],[3,1],[2,1]].include?cent.digits[0,2]
    suffix = 'th'
  elsif cent
    suffix = 'th'
  end
  cent.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(10203) == '103rd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
```
Launch School Solution:

After the century is determined, the suffix can be assigned by using mod. then the evaluated result is 1,2, or 3. The case statement in the century_suffix method definition returns the appropriate suffix,1, st etc. 

```ruby
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
```

































