Write a method that will take a short line of text, and print it within a box.

Example:
```ruby
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

```


+-      -+
| string 
+-     -+

string.length

top and bottom  border string = "+-" + [str.length * "-"] + "-+"

top side border = |  + |
string side borders = | + str + |


p top and bootom border
p upper and lowe side borders
p string 
p upperan lower side borders
p top and bottom borders





```ruby
'dog'.center(20)

=> "        dog         "

count the characters in the string

add a pipe and a space to both sides of the string

define the top and bottom default string

tb = '+-' + '-' * str.length + '--+'

define the upper and lower default string 
ul = '| ' + ' ' * str.length + ' |'

prtstr = '| ' + str + ' |'


str = 'My pup.'

str.length
=> 7


add one - for each character length of string to the tb str
add one space for each character length of string to the ul str
str.prepend('| ') 


str = "| #{str} |"

def center(str)
  puts '+-' + '-' * str.length + '-+'
  puts '| ' + ' ' * str.length + ' |'
  puts '| ' + str + ' |'
  puts '| ' + ' ' * str.length + ' |'
  puts '+-' + '-' * str.length + '-+'
end

***************************************************************

def print_in_box(str)
  puts '+-' + '-' * str.length + '-+'
  puts '| ' + ' ' * str.length + ' |'
  puts '| ' + str + ' |'
  puts '| ' + ' ' * str.length + ' |'
  puts '+-' + '-' * str.length + '-+'
end

print_in_box('To boldly go where no one has gone before.')


BOX = '+-' + '-' * str.length + '-+'\n'| ' + ' ' * str.length + ' |'\n'| ' + str + ' |'\n'| ' + ' ' * str.length + ' |'\n'+-' + '-' * str.length + '-+'



output = "This is\na string\nwith newlines"
puts output

BOX = "+-#{'-' * str.length}-+\n| #{' ' * str.length} |\n| #{str} |"

def center

tb = "+-#{'-' * str.length}-+"
ul = "| #{' ' * str.length} |"
center = "| #{str} |"

def print_in_box(str)
  tb = "+-#{'-' * str.length}-+"
  ul = "| #{' ' * str.length} |"
  center = "| #{str} |"
  puts "#{tb}\n#{ul}\n#{center}\n#{ul}\n#{tb}"
end










