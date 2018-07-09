puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_i

tip = bill * tip_percentage.to_f * 0.01
total_bill = bill + tip
total_bill = format('%.2f', total_bill)

puts "The tip is $#{tip.round(2)}"
puts "The total is $#{total_bill}"
