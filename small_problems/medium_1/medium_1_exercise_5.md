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

















