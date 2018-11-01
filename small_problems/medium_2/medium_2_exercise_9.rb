def bubble_sort!(arr)
  loop do
    swapped_this_iteration = false

    (arr.length - 1).times do |idx|
      if arr[idx] > arr[(idx + 1)]
        arr[(idx + 1)], arr[idx], = arr[idx], arr[(idx + 1)]
        swapped_this_iteration = true
      end
    end
    break if swapped_this_iteration == false
  end
  arr
end

puts
p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]
puts
p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
puts
p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts
