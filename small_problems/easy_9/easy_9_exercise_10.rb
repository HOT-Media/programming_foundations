
def buy_fruit(arr)
  converted_array = []

  arr.map do |idx|
    idx[1].times { converted_array << idx[0] }
  end

  converted_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
