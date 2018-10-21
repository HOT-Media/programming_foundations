Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

Example:
```ruby

greetings(['Jeremy', 'R', 'Mariani'], { title: 'Senior', occupation: 'Software engineer' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

arr_str = ['John', 'Q', 'Doe']

hsh_details = { title: 'Master', occupation: 'Plumber' }

array.split              key title    value occupation
John Q Doe! Nice to have a Master Plumber around.      .concat



def greetings(arr_str, hsh_details)
  "Hello, #{arr_str.join(" ")}! It is awesome to have a #{hsh_details.fetch(:title)} #{hsh_details.fetch(:occupation)} around"
end





join the name into one name with spaces and no commas

(arr_str[0]).join(", ")






=> "Jeremy R Mariani! It is awesome to have a Senior Software engineer around"




*************************************************JMX

def greetings(arr_str, hsh_details)
  "Hello, #{arr_str.join(" ")}! It is awesome to have a #{hsh_details.fetch(:title)} #{hsh_details.fetch(:occupation)} around."
end

greetings(['Jeremy', 'R', 'Mariani'], { title: 'Senior', occupation: 'Software engineer' })


















