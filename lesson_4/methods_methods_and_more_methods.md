8 out of 9 exactly correct
Elapsed time 1:32:53

1. wrong the first time but understood,  'hi' is the last line of the method.

```ruby

[1, 2, 3].select do |num|

  num > 5 # 1 > 5 false
          # 2 > 5 false
          # 3 > 5 false

  'hi' # evaluates to true, last line of the method on each iteration, true, true true =>  [1,2,3]
end

# => [1,2,3]
```



2. correct

```ruby

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4 # returns true for each element, string, that is less than 4 characters
                 #  => 2
end
```

3. correct

```ruby


[1, 2, 3].reject do |num|
  puts num # the block evalueates each element in the calling array 
           # the block also executes and or evaluates any code within the block. 
           # if the code within the block evaluates to false or nil the block will return
           # false for that iteration.
           # the .reject public instance method and returns true or false for each iteration
           # the method returns a new array containg the elements in the array [1,2,3] that 
           # evaluate to false, 
           # the return value of puts is nil so each iteration evaluats to false so the 
           # return value will be [1,2,3]
end

# =>[1,2,3]
```

4. correct 

```ruby

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash| # hash is the name of the collection 
                                                             # element


  hash[value[0]] = value # value represents the current element
                         # on the first iteration,  value is 'ant', value[0] is 'a' 
                         # hash[value[0]] = value is the syntax for hash = {:a=> 'ant'}
                         # first iteration: ant 
end



#=> {'a'=> 'ant', 'b' => 'bear', 'c' => 'cat'}
hash
#=> {...}



```

5. correct
```ruby

hash = { a: 'ant', b: 'bear' }
hash.shift # removes the first kv pair and returns it as a two item array
# => [:a, 'ant']

```

6. correct

```ruby

['ant', 'bear', 'caterpillar'].pop.size

# => 'caterpillar'.size
# => 11
```

7. correct 

```ruby

[1, 2, 3].any? do |num|
  puts num # the block 
  num.odd? # the block prints num but returns a truthy or falsey value if num is odd or even
           # [1,2,3] element 0 and 2 are odd so the block returns a truthy value for those elements
           # the method returns true because at least one of the iterations returned truthy
end








# => true

```

8. correct
```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2) # returns an array containing the first 2 elements of arr => [1,2]




#=> [1,2]
# run .take in pry and then check the value of arr, 
# => arr
# => [1, 2, 3, 4, 5]
   

```


9. correct 
```ruby


[1, 2, 3].map do |num|


  # block
  if num > 1   # 2 > 1 true 
               # 3 > 1 true 

    puts num   # puts 2, last line of method, returns nil
               # puts 3, last line of method, returns nil
  else
    num        # 1
  end
  # block


end



# => [1,nil,nil] 

```








































































