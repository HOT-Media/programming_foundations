Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 

The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

Examples:

```ruby

triangle(5)

    *
   **
  ***
 ****
*****
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********




n stars means 5 stars on each side
5 across the bottom means str = '*****'
5 tall on the right and left mean 5 rows tall
right triangle means on side is a right angle with the hypothing lower-left to upper-right

starting with the top 5 means
line 1 str = '    *'
second loop str = '   **'
third loop str = '  ***'
fourth loop str = ' ****'
fifth loop str = '*****'
star_counter == 5 break




str = 5


stars = str
stars = 5

loop do
  stars -= 1
  put


star_string = '*'

for each consectutive integer
  add one space t

1 
puts "*"

2
puts one space and 1 stars



next line replace space with star



all the strings will be the same length, ending with atleast one star:


first create the string from the integer argument 

      star_string = '*'
      integer_argument = 5
      star_string.prepend(' ' * integer_argument 













      integer_argument = 5
      star_string = '*'
      star_spacing = integer_argument - 1  # => 4
      star_string.prepend(' ' * star_spacing)



loop do 
  star_spacing -= 1 # => 3
  star_string[star_spacing] = '*' # put a star in index 3 of star string 
  puts star_string
  break if star_spacing == 0
end

star_spacing = 3
=> 3
star_string[star_spacing] = '*'
=> "*"
star_string
=> "   **"
loop do 
  star_spacing -= 1 # => 3  
  star_string[star_spacing] = '*' # put a star in index 3 of star string   
  puts star_string  
  break if star_spacing == 0  
  
end  
  ***
 ****
*****
=> nil



















      integer_argument = 5
      star_string = '*'
      star_spacing = integer_argument - 1  # => 4
      star_string.prepend(' ' * star_spacing)







****************

integer_argument = 5
star_spacing = integer_argument
star_string = " " * integer_argument

loop do 

  star_spacing -= 1 # => 4
  star_string[star_spacing] = '*' # put a star in index 3 of star string 
  puts star_string
  break if star_spacing == 0
end



def triangles(integer_argument)

star_spacing = integer_argument
star_string = " " * integer_argument

loop do 

  star_spacing -= 1 # => 4
  star_string[star_spacing] = '*' # put a star in index 3 of star string 
  puts star_string
  break if star_spacing == 0
end

end



def triangles(stars)
  star_spacing = integer_argument
  star_string = " " * integer_argument

  loop do 
    star_spacing -= 1
    star_string[star_spacing] = '*'
    puts star_string
    break if star_spacing == 0
  end
end

p triangles(5)
puts
p triangles(9)












