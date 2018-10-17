def halvsies(arr)
  if arr.empty?
    return Array.new(2, [])
  elsif arr.count == 1
    return [arr, []]
  end

  if arr.count.even?
    arr.each_slice(arr.count / 2).to_a
  else arr.each_slice(arr.count / 2 + 1).to_a
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
