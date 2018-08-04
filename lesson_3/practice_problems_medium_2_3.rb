def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # += means that a new string 'pumpkins rutabaga' is created
                               # and the original my string is unchanged
  an_array_param << "rutabaga" # << means that 'rutabaga will be added to the array my_array'
end

my_string = "pumpkins"
my_array = ["pumpkins"]


tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


tricky_method('pumpkins', ['pumkins'])

My string looks like this now: pumpkinsrutabaga
My array looks like this now: ['pumpkins', 'rutabaga']
