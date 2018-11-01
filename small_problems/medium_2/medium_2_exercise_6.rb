def invalid_triangle?(arr)
  angle_total = arr.sum
  case
  when angle_total == 0 then true
  when angle_total < 180 then true
  when angle_total > 180 then true
  when arr.include?(0) then true
  end
end

def triangle(x, y, z)
  angles = [x, y, z]
  if invalid_triangle?(angles)
    :invalid
  elsif angles.include?(90)
    :right
  elsif angles.sort.last > 90
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
