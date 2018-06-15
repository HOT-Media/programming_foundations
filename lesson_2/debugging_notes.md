

Pry

Pry is a debugging mechanism to step into fuctions systematically
to walk over code.

Pry syntax:
Initializing a program with pry for debugging:
```ruby
require "pry"
```

Stoping execution with pry:
```ruby
binding.pry
```

This code will not stop at binding.pry because the loop breaks
before binding.pry is executed
```ruby
require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  break if counter == 1 # break out of the loop here
                        # because counter is 1 here
  binding.pry # never executed
end
```

binding.pry will stop execution in this code
```ruby
require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  binding.pry # execution of the loop will stop here
              # for diagnostics on the variable counter
  break if counter == 5
end
```

Execution output for ONE variable diagnostics: counter
```
   14: 
    15: counter = 0
    16: 
    17: loop do
    18:   counter += 1
 => 19:   binding.pry # execution will stop here for 
                      # diagnostics on the variable counter
    20:   break if counter == 5
    21: end

[1] pry(main)>    # prompt after pry stops execution on line 19

# begin diagnostics: 
[1] pry(main)> counter: # Type in the variable I want to do 
                        # diagnostics on: counter
=> 1                    # this is the value of counter
                        # or self? on the first loop
[2] pry(main)>  Ctrl d  # Advance the loop once


[1] pry(main)> counter # Type counter for diagnostics
=> 2            
[2] pry(main)> Ctrl d  # Advance the loop once

[1] pry(main)> counter
=> 3
[2] pry(main)> Ctrl d  # Advance the loop once

[1] pry(main)> counter
=> 4
[2] pry(main)> Ctrl d  # Advance the loop once

[1] pry(main)> counter
=> 5
[2] pry(main)> Ctrl D # exit program because
                      # because:
                      # break if counter == 5 
```

Stopping a program with multiple variables:
```ruby

require "pry"

x = 1
y = 10
z = 25


loop do

 x += 5
 puts "stop execution here and check the value of x"
 binding.pry
 
 y += 2
 puts "stop execution here and check the value of y"
 binding.pry

 z *= 10
 puts "stop execution here and check the value of z"
 binding.pry 

 break if x == 8

 end

```
```
  7: 
     8: loop do
     9: 
    10:  x += 5
    11:  puts "stop execution here and check the value of x"
 => 12:  binding.pry
    13:  
    14:  y += 2
    15:  puts "stop execution here and check the value of y"
    16:  binding.pry
    17: 

First loop:
[1] pry(main)> x # stopped on the first loop
=> 6
[2] pry(main)> y # not executed yet
=> 10
[3] pry(main)> z # not executed yet
=> 25
[4] pry(main)>  Ctrl d

[4] pry(main)> x
=> 6
[5] pry(main)> y # stop executio here
=> 12
[6] pry(main)> z # not executed yet
=> 25
[7] pry(main)> Ctrl d

[1] pry(main)> x
=> 6
[2] pry(main)> y
=> 12
[3] pry(main)> z # exection stops here
=> 250
[4] pry(main)> Ctrl d  -> next loop

Second loop:
[1] pry(main)> x
=> 11
[2] pry(main)> y
=> 12
[3] pry(main)> z
=> 250
[4] pry(main)>  Ctrl d

[1] pry(main)> x
=> 11
[2] pry(main)> y
=> 14
[3] pry(main)> z
=> 250
[4] pry(main)>  Ctrl d

[2] pry(main)> x
=> 11
[3] pry(main)> y
=> 14
[4] pry(main)> z
=> 2500         # and so on
[5] pry(main)> exit-program








 























```

















