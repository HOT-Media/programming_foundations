100.times do |x|
  puts x if x.even?
end

arr = (1..99).to_a
arr.each { |element| puts element if element.even? }
