## Lesson 4, Exercise 7, More Methods

### Making sense of the Ruby documentation terminology

### 1. (obj) and |obj|

+ Does the syntax () or || determine the meaning of obj?

+ In the method .any? |obj| is inside the block and references the current element of the Array calling .any? 

+ In the method .each_with_object,  (obj) is a parameter for a method argument before the block that is a collection object represented by the second block argument. 

When I am referencing the Ruby documentation:
+ does (obj) always mean ([]) new Array or ({}) new Hash?
+ does |obj| always mean the current element of the object calling the method?

Or
+ does obj inside a block always mean obj is is referencing the current element of the caller?
+ does obj following the method, and before the block, always mean obj will be the new object returned by the method.

```ruby

any? [{ |obj| block }] # inside block

each_with_object(obj) { |(*args), memo_obj| ... } → obj  # method argument before block
```

### 2.  The → arrow

+ does the → arrow followed by obj  always mean the method is returning the value of the pareparameter (obj) ?

###  (* args)

+ does the * before (* args) imply that the Enumerable method .each_with_object  accepts more than one block argument depending on the caller or collection object?

```ruby
each_with_object() { |(*args), memo_obj| ... } → obj

each {| key, value | block } → hsh
```



### 3. More on a Hash calling .each_with_object using a Hash as the collection object

+ In the method .each_with_object(obj), when a Hash is the collection object, the Ruby documentation says (*args).
+ Do the parentheses around (* args) imply the first block parameter can accept 2 arguments in the same way .each does? use parentheses to capture the key and value in the first block argument. 

```ruby
each {| key, value | block } → hsh
each_with_object(obj) { |(*args), memo_obj| ... } → obj
```
