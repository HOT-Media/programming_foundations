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



