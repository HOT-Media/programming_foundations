Given this nested Hash:
```ruby
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
figure out the total age of just the male members of the family.

munsters key herman key gender if male then key age 




iterate through munsters

if genger is male
  add the age

*************************************************JMX

age = 0
=> 0

munsters.each_value do |v|
  age += v['age'] if v['gender'] == 'male'
end


age
=> 444













