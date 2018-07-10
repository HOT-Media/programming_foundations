def oddities(arr)
  odd_index_array = []
  elements = arr.count

  elements.times do |i|
    if i.odd?
      odd_index_array << arr[i]
    end
  end
  odd_index_array
end

p oddities([2, 3, 4, 5, 6]) == [3,5]
p oddities(['abc', 'def']) == ['def']
p oddities([123]) == []
p oddities([]) == []
