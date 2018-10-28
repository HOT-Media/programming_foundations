Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Examples
```ruby
diamond(1)

*
diamond(3)

 *
***
 *
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


diamond 9
longest string is 9
every line is odd number of stars
first line diamond in middle space space space space star space space space space
second line add one each side 
add one
add one

9 means 9 wide and 9 tall 
each iteration first star is in str(5)
456
34567
gsub " " with * 4 and 6
star_str = "    *    "
num.times
9.times do |number|
  number
  1      star_str.center? whatever
  2 

1,3,5,7,9,


1 diamond means 1 in the center
2 diamonds means one on top
one on each side
one on the bottom





num = 3

determine how long the string will be
num
base string is 1 star then add to it from there

num = 1

1 star

num = 3

3 lines


3 strings

first with one star in the middle
second with 3 stars
third same as the top

only build the top then reverse it


string.length = 3


start with the num string
num 5

star_str = '*' * 5

star_str = '*' * 5
=> "*****"

middle row has 5 stars

the next row up and down has 1 less star on either side, 3 stars 
  replace the first and last star with a space

the next row up and down has 1 less star on either side, 1 star
string 





num = 5

stars = '*' * num  => '*****'



2 on top
 stars
2 on bottom







I know the first line is always going to have 1 star centered in the num

line one = 



number = 5


star = '*'


star.center(5)

star
star + 2
star + 4
star + 2
star 




num = 5

star = 1

star.length = 1

star = '*'

loop do

  puts star.center(num)   '  *  '
  
  star += 2

  second loop
  puts star.center(num) ' *** '
  star += 2


  third loop 2 more stars, '*****'

  break if star.length = num 
  break
end
star
=> '*****'
star = 5
loop do 
  star -= 2
  puts star.center(num) ' *** '

  star-=2

  puts star.center(num) '  *  '

  break if star.length == 1

end






num = 5

star = '*'

loop do

  puts star.center(num)   #'  *  '
  
  star << '**'

  # second loop
  #puts star.center(num) #' *** '
  #star += 2


  #third loop 2 more stars, '*****'

  break if star.length = num 
  #break
end
#star
#=> '*****'
# star = 5
loop do 
  star.slice!(0..1)
  puts star.center(num)# ' *** '

  #star-=2

 #puts star.center(num) '  *  '

  break if star.length == 1

end





def draw_star(num)
  star = '*'
  puts star if num == 1
  loop do
    puts star.center(num)
    star << '**'
    break if star.length == num 
  end
  puts star
  loop do 
    star.slice!(0..1)
    puts star.center(num)
    break if star.length == 1
  end
end









def draw_star(num)
  star = '*'
  if num == 1
    puts star 
    return
  else
    loop do
      puts star.center(num)
      star << '**'
      break if star.length == num 
    end
    puts star
    loop do 
      star.slice!(0..1)
      puts star.center(num)
      break if star.length == 1
    end
  end
end






def draw_star(num)
  star = '*'
  if num == 1
    puts star 
    return
  else
    loop do
      puts star.center(num)
      star << '**'
      break if star.length == num 
    end
    puts star
    loop do 
      star.slice!(0..1)
      puts star.center(num)
      break if star.length == 1
    end
  end
end



*************************************************JMX



def draw_star(num)
  star = '*'
  if num == 1
    puts star
    return
  else
    loop do
      puts star.center(num)
      star << '**'
      break if star.length == num
    end
    puts star
    loop do
      star.slice!(0..1)
      puts star.center(num)
      break if star.length == 1
    end
  end
end

draw_star(3)
puts

draw_star(5)
puts

draw_star(7)
puts

draw_star(11)
puts
*************************************************JMX Refactored




def draw_star(num)
  star = '*'
  if num == 1
    puts star
    return
  else
    loop do
      puts star.center(num)
      star << '**'
      break if star.length == num
    end
    puts star
    loop do
      star.slice!(0..1)
      puts star.center(num)
      break if star.length == 1
    end
  end
end

draw_star(3)
puts

draw_star(5)
puts

draw_star(7)
puts

draw_star(11)
puts



extract the star number logic

top strings
middle strings
lower strings

1st iteration string = 


5
stars 1
2
3
4
5

loop one = str1

str1
str2
str3
str2
str1

def star_logic(string,number)
  loop do
    puts string.center(number)
    string << '**'
    break if string.length == number
  end
  puts string
  loop do
    string.slice!(0..1)
    puts string.center(number)
    break if string.length == 1
  end
end

star_logic("*",5)


def draw_star(num)
  star = '*'
  if num == 1
    puts star
    return
  else
    star_logic(star,num)
  end
end






def draw_star(num)
  star = '*'
  return puts star if num == 1 
  star_logic(star,num)
end






*************************************************JMX Final


def grid_logic(string, number)
  loop do
    puts string.center(number)
    string << '**'
    break if string.length == number
  end
  puts string
  loop do
    string.slice!(0..1)
    puts string.center(number)
    break if string.length == 1
  end
end

def diamond(num)
  star = '*'
  return puts star if num == 1
  grid_logic(star, num)
end

diamond(3)
puts

diamond(5)
puts

diamond(7)
puts

diamond(11)
puts

*** could be refactored with :
string.length.downto(0)
string.length.upto(number)



*************************************************LS 


def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end





                 5                 
def print_row(grid_size, distance_from_center)
                       5     - 2 *     2
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

               5
def diamond(grid_size)
                      5    -1   4 / 2 => 2
  max_distance = (grid_size - 1) / 2   => 2
        2,1,0                2,1,0                5          2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end









