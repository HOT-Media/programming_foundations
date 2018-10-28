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
