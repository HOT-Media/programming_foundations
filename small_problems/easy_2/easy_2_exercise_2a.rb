puts "Enter the length of the room in feet"
length = gets.chomp.to_i

puts "Enter the width of the room in feet"
width = gets.chomp.to_i

def calculate_area(l, w)
  l * w
end

square_feet = calculate_area(length, width)
square_inches = square_feet * 12 * 12
square_centimeters = square_inches * 6.4516

puts "The area of the room is #{square_feet} \
square feet, #{square_inches} square inches, \
and #{square_centimeters.round(2)} square centimeters."
