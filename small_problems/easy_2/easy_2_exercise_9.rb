name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# => Alice, Bob

name = 'Bob'
save_name = name # Bob
name.upcase! # mutates the value of the variable name and doesnt re assign a value to name.
puts name, save_name
=> BOB
BOB

