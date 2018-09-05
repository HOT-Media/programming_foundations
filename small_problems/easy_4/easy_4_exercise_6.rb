def running_total(array_argument)
  sum_arr = []

  array_argument.map do |idx|
    if sum_arr.empty?
      sum_arr << idx
    else
      sum_arr.push sum_arr.last + idx
    end
  end
  sum_arr
end
=> [[2, 7, 20], [2, 7, 20], [2, 7, 20]] because of .map






def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end