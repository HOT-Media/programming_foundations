puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year

years_to_work = retirement_age - age

year_to_retire = 2018 + years_to_work

puts "It's #{current_year}. You will retire in #{year_to_retire}"
puts "You have only #{years_to_work} years of work to go!"
