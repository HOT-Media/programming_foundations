=begin
Write a method that takes two arguments, 
a string and a positive integer, 
and prints the string as many times as the integer indicates.
=end


def repeat(str, rpt)
  loop do
    rpt -= 1
    puts str
  break if rpt == 0
  end
end

repeat("Hello", 3)
  