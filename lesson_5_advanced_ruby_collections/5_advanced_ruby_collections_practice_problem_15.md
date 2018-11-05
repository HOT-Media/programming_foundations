Given this data structure 

write some code to 

return an array which 

contains only the hashes 

where all the integers are even.

```ruby 
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


arr.map do |hsh|
  hsh.each_value do |v|
    v.sum.odd? 


arr.clear
=> []
{a: [1, 2, 3]}.each_value do |v|
  arr << v if v.all? {|int| int.odd?}  
end    
=> {:a=>[1, 2, 3]}
arr
=> []




arr.clear
=> []
{b: [2, 4, 6]}.each_value do |v|
  arr << v if v.all? {|int| int.odd?}  
end    
=> {:a=>[1, 2, 3]}
arr
=> []



{:b=>[2, 4, 6]}[:b].all?{|num| !num.odd?}
=> true


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


collect_arr = []
arr.map do |hsh|
  hsh.each_value do |v|
    arr << v if v.all? {|int| !int.odd?}  
  end 
end


collect_arr = []
arr.map do |hsh|
   {b: [2, 4, 6], c: [3, 6], d: [4]}.each_pair do |k,v|


    collect_arr << v if v.all? {|int| !int.odd?}  
  end 
end





arr.clear
{b: [2, 4, 6]}.each_value do |v|
  arr << v if v.all? {|int| !int.odd?}  
end    
=> {:a=>[1, 2, 3]}
arr
=> []


return an array which 

contains only the hashes 

where all the integers are even.

arr = [
      {a: [1, 2, 3]},
      {b: [2, 4, 6], c: [3, 6], d: [4]},
      {e: [8], f: [6, 10]}
      ]


iterate throug the array
all the integers are values in an array 
hash{ key, value}
hash{ _ , [1,2,3]}





arr.map do |hsh|
  (hsh.values).each {|subarr| (subarr.all?{|num| !num.odd?}) }
end



=> [[2, 4, 6], [3, 6], [4]]





values → array 
Returns a new array populated with the values from hsh. See also Hash#keys.

h = { "a" => 100, "b" => 200, "c" => 300 }
h.values   #=> [100, 200, 300]


.all? { |word| word.length >= 3 }





arr = [
      {a: [1, 2, 3]},
      {b: [2, 4, 6], c: [3, 6], d: [4]},
      {e: [8], f: [6, 10]}
      ]


arr.map do |hsh|
  {a: [1, 2, 3]}

 hsh if (hsh.values).each {|subarr|(subarr.all?{|num| !num.odd?}) }
end


return the values from the hash if  all the


arr.map do |hsh|
  #{b: [2, 4, 6], c: [3, 6], d: [4]}
 hsh.values if (hsh.values).each {|subarr|(subarr.all?{|num| !num.odd?}) }
end

arr.map do |hsh|
  #{b: [2, 4, 6], c: [3, 6], d: [4]}
 hsh.values if (hsh.values).flatten.all?{|num| !num.odd?}
end


{a: [1, 2, 3]}.values.flatten.all?{|num| !num.odd?}
=> false


{b: [2, 4, 6], c: [3, 6], d: [4]}.values.flatten.all?{|num| !num.odd?}


{e: [8], f: [6, 10]}.values.flatten.all?{|num| !num.odd?}


[] contains only the hashes



arr.map do |hsh|
  hsh if hsh.values.flatten.all?{|num| !num.odd?}
end




arr.select do |hshval|
  hshval if hshval.values.flatten.all?{|num| !num.odd?}
end  
=> [nil, nil, {:e=>[8], :f=>[6, 10]}]














