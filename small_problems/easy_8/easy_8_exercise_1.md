Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:
```ruby

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


[3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2)

put the first index into an Array
put that array into another array
put the first 2 indexes into an array then put into other array
put all 3 indexes into an arry then into other array then flatten then sum


[[3], [3, 5],[3, 5, 2]]


[[3], [3, 5],[3, 5, 2]].flatten
=> [3, 3, 5, 3, 5, 2]
[[3], [3, 5],[3, 5, 2]].flatten.sum
=> 21

arr.each with object ( |idx| collection_arr, idx)

collection arr << idx  


array1 = [1, 2, 3]
array2 = ['a', 'b', 'c']

result = []
  array1.each_with_index do | collector_array, index|
    result << collector_array << array2[index]
  end
result


0 
0 and 1
0 and 1 and 2

                                   3?    5?
sum_of_arr = [3, 5, 2].inject do |memo, word|
  
  memo + word 
end  
=> "sheep"
dog 


(5..10).reduce(:+) 



[3, 5, 2]) == 

(3) + (3 + 5) + (3 + 5 + 2)



(3) + 
(3 + 5) + 
(3 + 5 + 2)

iterate through original array
put the first element into an array
put the 1st and second element into another array

arr.map do |idx|
  idx

  each iteration make a new array one longer











def sum_of_sums(arr)

  collector = [arr[0]]
  arr.length.times do |num|
    collector << arr[0..num + 1]  
  end  
  collector.map{ |idx| idx.sum}.sum
end



collector
=> [[1, 2], [1, 2, 3], [1, 2, 3]]


collector.map{ |idx| idx.sum}.sum










def sum_of_sums(arr)

  collector = [arr[0]]
  arr.length.times do |num|
    collector << arr[0..num + 1]  
  end  
  collector.map{ |idx| idx.sum}.sum
end


collector = [arr[0]]
=> [3]
arr.length.times do |num|  
  collector << arr[0..num + 1]      
end      
=> 3
collector
=> [3, [3, 5], [3, 5, 2], [3, 5, 2]]


array_of_subarrays = Array.new[arr.length , nil or []  ]
=> [[], [], []]

counter = 0

arr. each_with_index | element, index|
  1st iteration 
 array_of_subarrays[counter] << arr[0 ..counter].sum    => array_of_subarrays[[3],[],[]]
  counter += 1

                       1             0 .. 1         3,5
  array_of_subarrays[counter] << arr[0 ..counter].sum   array_of_subarrays[[3],[3,5],[3,5,2]] 
                                                                        
                                                  .sum 
                                                  [3]   [3+5]  [3+5+2]
                                                  [3]      [8]   [10]
  end

   array_of_subarrays.sum => 21







  2nd iteration
  collector << arr[ 0 ..counter] 
                    0 .. 1
                    0 .. 2 
           


arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

=> [[], [], []]
counter = 0

arr.length.times do |num|
  array_of_subarrays[counter] << arr[0 ..num].sum
end

array_of_subarrays.sum




arr. each_with_index | element, index|
  1st iteration 
 array_of_subarrays[counter] << arr[0 ..counter].sum    => array_of_subarrays[[3],[],[]]
  counter += 1

                       1             0 .. 1         3,5
  array_of_subarrays[counter] << arr[0 ..counter].sum   array_of_subarrays[[3],[3,5],[3,5,2]] 
                                                                        
                                                  .sum 
                                                  [3]   [3+5]  [3+5+2]
                                                  [3]      [8]   [10]
  end

   array_of_subarrays.sum => 21

   







arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] << arr[0 .. num].sum
end

array_of_subarrays.sum





arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] << arr[0 .. num].sum
end

array_of_subarrays.sum

3.times do |num|
  array_of_subarrays[num] << arr[0 .. num].sum

  array_of_subarrays[0] << arr[0..0].sum 



array_of_subarrays = Array.new(arr.length , [] )
=> [[], [], []]


array_of_subarrays[0] << arr[0..0]
=> [[3]]
array_of_subarrays
=> [[[3]], [[3]], [[3]]]



array_of_subarrays = [['element1'], ['element2'], ['element3']]
=> [["element1"], ["element2"], ["element3"]]


3.times do |num|
  array_of_subarrays[num] << arr[0 .. num].sum

  array_of_subarrays[0] << arr[0..0].sum 

array_of_subarrays[0]
=> ["element1"]


array_of_subarrays[0] << arr[0..0].sum 
=> ["element1", 3]
array_of_subarrays
=> [["element1", 3], ["element2"], ["element3"]]




3.times do |num|
  array_of_subarrays[num] << arr[0 .. num].sum

  array_of_subarrays[0] << arr[0..0].sum 
  array_of_subarrays[1] << arr[0..1].sum 
  array_of_subarrays[2] << arr[0..2].sum   



array_of_subarrays[0]
=> ["element1"]


array_of_subarrays[0] << arr[0..0].sum 
=> ["element1", 3]
array_of_subarrays
=> [["element1", 3], ["element2"], ["element3"]]
array_of_subarrays
=> [["element1", 3], ["element2", 8], ["element3", 10]]



array_of_subarrays = Array.new(arr.length , [] )
=> [[], [], []]



array_of_subarrays = Array.new(arr.length , [] )
=> [[], [], []]
arr
=> [3, 5, 2]
array_of_subarrays[0] << arr[0..0].sum
=> [3]
array_of_subarrays
=> [[3], [3], [3]]



array_of_subarrays = Array.new # => []

arr
=> [3, 5, 2]

array_of_subarrays << arr[0..0].sum
=> [3]
array_of_subarrays
=> [[3], [3], [3]]


array_of_subarrays = Array.new
=> []
array_of_subarrays[0]
=> nil
array_of_subarrays
=> []
array_of_subarrays
=> []
arr
=> [3, 5, 2]

3.times do |num|
  array_of_subarrays << arr[0 .. num].sum 
                            0 .. 0 => 3  .sum 3
                            0..1 => 3,5  .sum 8
                            0..2 => 3,5,2 .sum 10


end  
=> 3
array_of_subarrays
=> [3, 8, 10]
array_of_subarrays.sum
=> 21



  array_of_subarrays[0] << arr[0..0].sum 
  array_of_subarrays[1] << arr[0..1].sum 
  array_of_subarrays[2] << arr[0..2].sum   













arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] << arr[0 .. num].sum
    #                  0             3
    puts array_of_subarrays
end



array_of_subarrays
=> [[3, 8, 10], [3, 8, 10], [3, 8, 10]]





arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] = arr[0 .. num]
    #                  0             3
    puts array_of_subarrays
end



arr.length.times do |num|
  puts arr[0..num]  
end  
3
3
5
3
5
2


arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] = arr[0 .. num].sum
    #                  0             3
    puts array_of_subarrays
end

arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] = arr[0 .. num]
    puts array_of_subarrays
end




arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  array_of_subarrays[num] << arr[0 .. num]
                      0      
    puts array_of_subarrays
end



Append—Pushes the given object on to the end of this array. This expression returns the array itself, so several appends may be chained together.




array_of_subarrays << arr[0 .. 0]



arr = [3, 5, 2]

array_of_subarrays = Array.new(arr.length , [] )

arr.length.times do |num|
  [array_of_subarrays] << arr[0 .. num]
                      0      
    puts array_of_subarrays
end


array_of_subarrays
=> [[], [], [], [3], [3, 5], [3, 5, 2]]



array_one = Array.new(3 , [] )


I created first_arr explicitly calling ::new with two arguments, the initial size (3) and a default object ([]).
```
When I use Append to push the string object 'why?' on to the end of the Array in index location first_array[0], the string object 'why?' is appended to the Array in index location [0], [1] and [2], however; when I assign second_array to an Array with 3 nested empty Arrays, Append only pushes the string object 'why?' to the empty Array in index location second_array[0], as expected.

When creating a new array with :: new, why does append push the string object 'why?' to all three elements?



```ruby
first_array = Array.new(3, [])
=> [[], [], []]
first_array[0]
=> []
first_array[0] << 'why?'
=> ["why?"]
first_array
=> [["why?"], ["why?"], ["why?"]]

second_array = [[],[],[]]
=> [[], [], []]
second_array[0]
=> []
second_array[0] << 'why?'
=> ["why?"]
second_array
=> [["why?"], [], []]






first_array = Array.new(3, [])
=> [[], [], []]
first_array[0]
=> []
first_array[0] << 3
=> [3]
first_array
=> [[3], [3], [3]]

second_array = [[],[],[]]
=> [[], [], []]
second_array[0]
=> []
second_array[0] << 3
=> [3]
second_array
=> [[3], [], []]



*************************************************JMX

def sum_of_sums(arr)
  sum_arr = []
  arr.length.times {|num| sum_arr << arr[0 .. num].sum }
  sum_arr.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

*************************************************LS 


def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end


def sum_of_sums(numbers)
  sum_total = 0

  1.upto(3) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end











