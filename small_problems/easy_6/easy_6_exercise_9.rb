def include?(arr, include_this)
  return false if arr.empty?
  included_in_array = []
  arr.each do |idx|
    if idx == include_this
      included_in_array << idx
    end
  end
  included_in_array[0] == include_this
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
