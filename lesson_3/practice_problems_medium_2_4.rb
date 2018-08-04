def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga' # << appends and does not create a new string
                               # my_string has been mutated by <<
  puts an_array_param.object_id
  an_array_param = ['pumpkins', 'rutabaga'] # re assigning the value of my_array ['pumkins']
  puts an_array_param.object_id 
end

my_string = "pumpkins"
my_array = ["pumpkins"]

tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

def tricky_method_two(a_string_param, an_array_param)
     a_string_param << 'rutabaga' # << appends and does not create a new string  
     # my_string has been mutated by <<                               
     puts an_array_param.object_id  
     an_array_param = ['pumpkins', 'rutabaga'] # re assigning the value of my_array ['pumkins']  
     puts an_array_param.object_id   
   end  
=> :tricky_method_two
   
   my_string = "pumpkins"
=> "pumpkins"
   my_array = ["pumpkins"]
=> ["pumpkins"]
   
   tricky_method_two(my_string, my_array)
70174271623400
70174271503540
=> nil
   
   puts "My string looks like this now: #{my_string}"
My string looks like this now: pumpkinsrutabaga
=> nil
   puts "My array looks like this now: #{my_array}"
My array looks like this now: ["pumpkins"]
=> nil
   my_array.object_id
=> 70174271623400
