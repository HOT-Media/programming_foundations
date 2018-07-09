100.times do |x|
  puts x if x.odd?
end

arr = (1..99).to_a
arr.each { |element| puts element if element.odd? }
