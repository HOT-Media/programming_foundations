def reverse(arr)
  new_arr = []
  arr.count.times { |idx| new_arr.unshift(arr[idx]) }
  new_arr
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
p reverse(%w(a b c d e)) == %w(e d c b a)
p reverse(['abc']) == ['abc']
p reverse([]) == []

p list = [1, 2, 3]
p new_list = reverse(list)
p list.object_id != new_list.object_id
p list == [1, 2, 3]
p new_list == [3, 2, 1]
