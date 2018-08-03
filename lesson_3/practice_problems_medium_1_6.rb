def not_tricky_method(string, array)
  string = string << ", rutabaga"
  array =  array << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]

not_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


 x = nil
=> nil
   y = nil
=> nil
   x, y = not_so_tricky_method(my_string, my_array)
=> ["pumpkinsrutabaga", ["pumpkins", "rutabaga"]]
   puts "My string looks like this now: #{x}"
My string looks like this now: pumpkinsrutabaga
=> nil
   puts "My array looks like this now: #{y}"
My array looks like this now: ["pumpkins", "rutabaga"]
=> nil
