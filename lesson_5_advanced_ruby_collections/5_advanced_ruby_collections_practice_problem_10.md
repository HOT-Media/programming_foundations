Given the following data structure

and without modifying the original array,

use the map method to return a new array identical in structure to the original

but where the value of each integer is incremented by 1.

```ruby

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


arr.map do |idx|

  puts idx
  {a: 1}
  {a: 1}.each_value{|v| v + 1}
end




arr[0]
=> {:a=>1}

arr[0][:a] += 1
=> 2
arr
=> [{:a=>2}, {:b=>2, :c=>3}, {:d=>4, :e=>5, :f=>6}]



arr.map do |key,value|



h = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }



 {:a=>1}.value



arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


new array

arr.map 






















without modifying the original array,

use the map method to return a new array identical in structure to the original

but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map 

returned_arr []

arr = [
       {a: 1},
       {b: 2, c: 3},
       {d: 4, e: 5, f: 6}
      ]


rar = [
       {a: 1},
       {b: 2, c: 3},
       {d: 4, e: 5, f: 6}
      ]

returned arr = [
                hash  1 kv
                hash  2 kv pairs
                hash  3 kv pairs
               ]



hsh = {a: 1}
=> {:a=>1}
hsh[:a] = (hsh[:a]) + 1
=> 2
hsh
=> {:a=>2}










arr.map do |hsh|
   hsh.values
  {a: 1}

h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
h.values_at("cow", "cat")  #=> ["bovine", "feline"]

new_arr = 







arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

hsh = {a: 1}
=> {:a=>1}
hsh[:a] = (hsh[:a]) + 1
=> 2
hsh
=> {:a=>2}



arr.map do |hsh|
   hsh[:a] = (hsh[:a]) + 1

   {a: 1}
   hsh.each do |k,v|
     hsh[:a] = (hsh[:a]) + 1




[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end










[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

















[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
     incremented_hash[key] = value + 1
   end
   incremented_hash
end















