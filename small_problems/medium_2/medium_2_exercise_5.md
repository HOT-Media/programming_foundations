A triangle is classified as follows:

equilateral All 3 sides are of equal length

isosceles 2 sides are of equal length, while the 3rd is different

scalene All 3 sides are of different length

To be a valid triangle,

the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 

and all sides must have lengths greater than 0:

if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol

 :equilateral,
 :isosceles, 
 :scalene, or 
 :invalid 

 depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Examples:
```ruby
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid





A triangle is classified as follows:

equilateral All 3 sides are of equal length

isosceles 2 sides are of equal length, while the 3rd is different

scalene All 3 sides are of different length

To be a valid triangle,

the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 

and all sides must have lengths greater than 0:

if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol

 :equilateral, equilateral All 3 sides are of equal length
 :isosceles, isosceles 2 sides are of equal length, while the 3rd is different
 :scalene, scalene All 3 sides are of different length
 :invalid one side == 0, or none of the above


To be a valid triangle,

the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 
 


triangle(3, 3, 3) == :equilateral


side_1, side_2 side_3

   ==       ==      equilateral


   case triangle
    # validate first
  when 0 not triangle
  when short + short < long not triangle
   when ==  == equilateral
   when == and one longer isoclese
   when all three difrent scalaene
   




def invalid_triangle?(arr)
  angle_total = arr.sum
  case
  when angle_total == 0 then true
  when angle_total < 180 then true
  when angle_total > 180 then true
  when arr.include?(0) then true
  end
end




def triangle(x,y,z)
  angles = [x,y,z]
  if invalid_triangle?(angles)
    :invalid
  elsif angles.uniq.length == 1
    :equilateral
  elsif angles.uniq.length == 2
    :isosceles
  else
    :scalene
  end
end


triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid


side length



the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 

and all sides must have lengths greater than 0:

if either of these conditions is not satisfied, the triangle is invalid.

triangle(3, 3, 3) == :equilateral



*************************************************JMX
def invalid_triangle?(arr)
  arr.sort!
  case
  when arr[0..1].sum < arr.last then true
  when arr.include?(0) then true
  end
end

def triangle(x,y,z)
  side_length = [x,y,z].sort
  if side_length[0..1].sum < side_length.last || side_length.include?(0) 
    :invalid
  elsif side_length.uniq.length == 1
    :equilateral
  elsif side_length.uniq.length == 2
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid


def invalid_triangle?(arr)
  arr.sort!
  if arr[0..1].sum < arr.last 
    true
  elsif  arr.include?(0) 
    true
  else
    false
  end
end

def invalid_triangle?(arr)
  arr.sort!
  true if arr[0..1].sum < arr.last || arr.include?(0) 
end








:equilateral, equilateral All 3 sides are of equal length
 :isosceles, isosceles 2 sides are of equal length, while the 3rd is different
 :scalene, scalene All 3 sides are of different length
 :invalid one side == 0, or none of the above

*************************************************JMX

def triangle(x, y, z)
  side_length = [x, y, z].sort
  if side_length[0..1].sum < side_length.last || side_length.include?(0)
    :invalid
  elsif side_length.uniq.length == 1
    :equilateral
  elsif side_length.uniq.length == 2
    :isosceles
  else
    :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
true
=> true
p triangle(3, 3, 1.5) == :isosceles
true
=> true
p triangle(3, 4, 5) == :scalene
true
=> true
p triangle(0, 3, 3) == :invalid
true
=> true
p triangle(3, 1, 1) == :invalid
true
=> true




