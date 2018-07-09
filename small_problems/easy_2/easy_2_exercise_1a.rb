def age_of_who(default_name = "Teddy")
  "Hi #{default_name}"
end

age = rand(20..200)

puts "What is your name?"
name = gets.chomp

if name == ""
  puts age_of_who() + ", your age is #{age}"
else
  puts puts age_of_who(name) + ", your age is #{age}"
end
