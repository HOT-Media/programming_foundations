def multiply_list(arr_one, arr_two)
  new_arr = []
  arr_one.each_with_index do |element, index|
    new_arr << element * arr_two[index]
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
