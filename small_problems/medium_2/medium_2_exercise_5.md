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
   






















