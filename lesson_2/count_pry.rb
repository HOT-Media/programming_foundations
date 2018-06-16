require "pry"

counter = 0

loop do
  counter += 1
  puts counter
  break if counter == 1 # Break here because x is 1 here
  binding .pry
end
