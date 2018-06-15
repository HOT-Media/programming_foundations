require "pry"

x = 1
y = 10
z = 25


loop do

 x += 5
 puts "stop execution here and check the value of x"
 binding.pry
 
 y += 2
 puts "stop execution here and check the value of y"
 binding.pry

 z *= 10
 puts "stop execution here and check the value of z"
 binding.pry 

 break if x == 8

 end