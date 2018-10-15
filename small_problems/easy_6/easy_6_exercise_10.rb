def triangles(integer_argument)
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
