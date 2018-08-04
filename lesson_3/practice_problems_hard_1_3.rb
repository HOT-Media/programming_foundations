# A

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one
puts "two is: #{two}" # two
puts "three is: #{three}" # three

=begin 
puts "one is: #{one}" # one
one is: one
=> nil
   puts "two is: #{two}" # two
two is: two
=> nil
   puts "three is: #{three}" # three
three is: three
=end








# B

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one
puts "two is: #{two}" # two
puts "three is: #{three}" # three

=begin 
   puts "one is: #{one}" # one
one is: one
=> nil
   puts "two is: #{two}" # two
two is: two
=> nil
   puts "three is: #{three}" # three
three is: three
=> nil
   
=end










# C

def mess_with_vars(one, two, three)
  one.gsub!("one","two") # gsub! mutates the caller
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # two
puts "two is: #{two}" # three
puts "three is: #{three}" # one 

=begin 
   puts "one is: #{one}" # two
one is: two
=> nil
   puts "two is: #{two}" # three
two is: three
=> nil
   puts "three is: #{three}" # one 
three is: one
=> nil
   
=end






