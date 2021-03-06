def oddities(arr)
  odd_index_array = []
  elements = arr.count

  elements.times do |i|
    if i.even?
      odd_index_array << arr[i]
    end
  end
  odd_index_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
