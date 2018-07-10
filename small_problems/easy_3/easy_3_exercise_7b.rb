def oddities_b(arr)
  if arr == []
    return []
  end

  odd_array = []
  counter = 0

  loop do
    odd_array << arr[counter]
    counter += 2
    break if counter >= arr.count
  end
  odd_array
end

p oddities_b([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_b(['abc', 'def']) == ['abc']
p oddities_b([123]) == [123]
p oddities_b([]) == []
