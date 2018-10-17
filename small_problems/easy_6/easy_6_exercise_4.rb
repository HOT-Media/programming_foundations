def reverse!(arr)
  return [] if arr.empty?
  arr.count
  accumulator = []

  index_counter = arr.count
  loop do
    index_counter -= 1
    accumulator << arr.pop
    break if index_counter == 0
  end

  arr.concat(accumulator)
end
