For each of these collection objects where the value 3 occurs, 
demonstrate how you would change this to 4.


```ruby
arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}









arr1 = [1, [2, 3], 4]
=> [1, [2, 3], 4]

arr1[1][1] = 4
=> 4

arr1
=> [1, [2, 4], 4]

*************************************************

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2.map do |element|
  element = 4 if element.class == Integer &&  element == 3
  element
end



arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[2]=4
=> 4

arr2
=> [{:a=>1}, {:b=>2, :c=>[7, 6, 5], :d=>4}, 4]




*************************************************

hsh1 = {first: [1, 2, [3]]}


hsh1[:first][2][0] = 4
=> 4


hsh1
=> {:first=>[1, 2, [4]]}

*************************************************




hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


hsh2[['a']][:a][2] = 4
=> 4

hsh2
=> {["a"]=>{:a=>["1", :two, 4], :b=>4}, "b"=>5}







































