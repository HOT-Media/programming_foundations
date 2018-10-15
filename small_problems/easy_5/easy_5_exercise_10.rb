def print_in_box(str)
  tb = "+-#{'-' * str.length}-+"
  ul = "| #{' ' * str.length} |"
  center = "| #{str} |"
  puts "#{tb}\n#{ul}\n#{center}\n#{ul}\n#{tb}"
end

print_in_box('To boldly go where no one has gone before.')
