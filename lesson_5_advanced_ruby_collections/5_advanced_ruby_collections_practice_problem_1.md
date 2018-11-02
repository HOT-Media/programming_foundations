

How would you order this array of number strings by descending numeric value?

```ruby
arr = ['10', '11', '9', '7', '8']


arr.sort_by do |elem|
  elem.to_i  
end  
=> ["7", "8", "9", "10", "11"]

*************************************************JMX

arr.sort do |a,b|
  b.to_i <=> a.to_i  
end  
=> ["11", "10", "9", "8", "7"]
