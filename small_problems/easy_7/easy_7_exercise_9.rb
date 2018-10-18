def multiply_all_pairs(arr_one, arr_two)
  arr_one.product(arr_two).map { |idx| idx[0] * idx[1] }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
