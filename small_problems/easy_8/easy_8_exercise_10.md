Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:
```ruby
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'


arr = str.partition(str.length)


str = "my happy pooch"
=> "my happy pooch"
a.clear
=> []
a << str.slice!(str.length / 2..-1)
=> ["y pooch"]
a
=> ["y pooch"]
b = []
=> []
b << str
=> ["my happ"]
a
=> ["y pooch"]
b
=> ["my happ"]
a.lenth == b.length
NoMethodError: undefined method `lenth' for ["y pooch"]:Array
Did you mean?  length
from (pry):857:in `__pry__'
a.length == b.length
=> true
center_character_string = a[0.first] + b[0.last]
NoMethodError: undefined method `first' for 0:Integer
from (pry):859:in `__pry__'
center_character_string = a[0][0] + b[0][-1]
=> "yp"


