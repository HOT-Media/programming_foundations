Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

Examples
```ruby

swap_name('Joe Roberts') == 'Roberts, Joe'

arr1 = string.split (" ")

arr2 = [ ,  ]

paralell assignment


str.split(" ")


str.split(' ')
=> ["Joe", "Roberts"]
reversed_elements_array = str.split(' ')
=> ["Joe", "Roberts"]
reversed_elements_array
=> ["Joe", "Roberts"]
reversed_elements_array.reverse
=> ["Roberts", "Joe"]
reversed_elements_array.reverse.join(', )
')
=> "Roberts, )\nJoe"
reversed_elements_array.reverse.join(', ')
=> "Roberts, Joe"

str.split(' ').reverse.join(', ')
=> "Roberts, Joe"


*************************************************JMX

def swap_name(str)
  str.split(' ').reverse.join(', ')
end

swap_name('Joe Roberts') == 'Roberts, Joe'
=> true


