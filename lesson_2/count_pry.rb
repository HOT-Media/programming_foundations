require "pry"

counter = 0

loop do 
  counter += 1
  break if counter == 1
  binding .pry
end
