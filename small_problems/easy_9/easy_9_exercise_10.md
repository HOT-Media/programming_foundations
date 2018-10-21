Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Example:
```ruby

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

  arr = []

(arr[0][0])* arr[0][1]

arr.map |idx|
 idx is the integer in the subarray[idx] apples x 3
 fruit_array << (idx[0])* idx [apples, 3]


grocery_array = [["apples", 3], ["orange", 1], ["bananas", 2]]


idx 0 * idx 1 into collector array


grocery_array.map |idx|
  subarray[0] 

apples * 3 , oranges * 1, bananas * 2

element 1         element2        element3
idx 0              idx 1           idx 2
nested_array    nested_array    nested_array

converted_array = []

grocery_array.map |idx [apples, 3]

  apples      3
  idx[0] * idx[1]



  converted_array << idx[0] * idx[1]


grocery_array.map |idx [apples, 3]

  apples      3
  idx[0] * idx[1]

  

  converted_array << idx[0] * idx[1]




grocery_array = [["apples", 3], ["orange", 1], ["bananas", 2]]
=> [["apples", 3], ["orange", 1], ["bananas", 2]]
grocery_array[0]
=> ["apples", 3]
idx = grocery_array[0]
=> ["apples", 3]
idx[0] * idx[1]
=> "applesapplesapples"
(idx[0] << ' ') * idx[1]
=> "apples apples apples "
((idx[0] << ' ') * idx[1]).split(' ')
=> ["apples", "apples", "apples"]
(((idx[0] << ' ') * idx[1]).split(' ')).flatten
=> ["apples", "apples", "apples"]
(((idx[0] << ' ') * idx[1]).split(' ')).flatten
=> ["apples", "apples", "apples"]
converted_array = []
=> []
converted_array << (((idx[0] << ' ') * idx[1]).split(' ')).flatten
=> [["apples", "apples", "apples"]]






converted_array = []

grocery_array.map |idx [apples, 3]

  apples      3
  idx[0] * idx[1]



  converted_array << idx[0] * idx[1]


grocery_array.map |idx [apples, 3]

  apples      3
  idx[0] * idx[1]

  

  converted_array << idx[0] * idx[1]


converted_array = []

grocery_array.map |idx|

  idx[1].times { |fruit| converted_array << idx[1] }
end


converted_array = []

grocery_array = [["apples", 3], ["orange", 1], ["bananas", 2]]





converted_array
=> []
grocery_array
=> [["apples", 3], ["orange", 1], ["bananas", 2]]
grocery_array[0]
=> ["apples", 3]
idx = grocery_array[0]
=> ["apples", 3]
idx
=> ["apples", 3]
idx[1]
=> 3
idx[1].times {|x| puts x}
0
1
2
=> 3
idx[1].times {|x| idx[0]}
=> 3
idx[1].times {|x| converted_array << idx[0]}
=> 3
converted_array
=> ["apples", "apples", "apples"]





converted_array = []

grocery_array = [["apples", 3], ["orange", 1], ["bananas", 2]]


grocery_array.map do |idx|

  idx[1].times { |x| converted_array << idx[0] }

end

converted_array




def buy_fruit(arr)

  converted_array = []

  grocery_array = [["apples", 3], ["orange", 1], ["bananas", 2]]


  grocery_array.map do |idx|

    idx[1].times { |x| converted_array << idx[0] }

  end

  converted_array
end


*************************************************JMX



def buy_fruit(arr)
  converted_array = []

  arr.map do |idx|
    idx[1].times { |x| converted_array << idx[0] }
  end

  converted_array
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]




























