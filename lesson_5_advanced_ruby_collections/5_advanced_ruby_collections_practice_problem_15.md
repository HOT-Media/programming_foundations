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












