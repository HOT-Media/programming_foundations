def interleave(arr1, arr2)
  collector = []
  arr1.count.times do |element|
    collector << arr1[element]
    collector << arr2[element]
  end
  collector
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
