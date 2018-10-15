def my_running_total(array_argument)
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

p my_running_total([2, 5, 13]) == [2, 7, 20]
p my_running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p my_running_total([3]) == [3]
p my_running_total([]) == []

puts

def running_total(array)
  starting_sum = 0
  array.map { |value| starting_sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
