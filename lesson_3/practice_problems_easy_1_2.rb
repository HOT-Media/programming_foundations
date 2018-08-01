Describe the difference between ! and ? in Ruby. 
And explain what would happen in the following scenarios:

? and ! are either part of a class method or
they return a boolean value or switch a boolean value


what is != and where should you use it?
  != means not equal to

put ! before something, like !user_name
 !before something turns any object into the oposite of their boolean equivalent

put ! after something, like words.uniq!
 ! after .uniq means it mutates the caller

put ? before something
put ? after something
  ? is the ternary operator for if else

put !! before something, like !!user_name
!! turns any object into their boolean equivalent