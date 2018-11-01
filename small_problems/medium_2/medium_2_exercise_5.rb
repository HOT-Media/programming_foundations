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
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
