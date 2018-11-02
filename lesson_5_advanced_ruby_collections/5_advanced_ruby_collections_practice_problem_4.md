For each of these collection objects where the value 3 occurs, 
demonstrate how you would change this to 4.


```ruby
arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}









arr1 = [1, [2, 3], 4]

arr1.map do |elem|
  if elem.class == Integer 
    4 if elem == 3
  elsif elem.class == Array 
    elem.map do |int|
      4 if int == 3
       
    end
  end
end






iterate through the array
  is the element an integer
    yes
     is the element the integer 3
     yes
      4

is the element an integer
  no













arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]







hsh1 = {first: [1, 2, [3]]}








hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}











































