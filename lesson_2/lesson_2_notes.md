
Pseudo-Code:

START               the start of the program
SET                 sets a variable I can use for later
GET                 retrieve input from a user
PRINT               display output to a user
READ                retrieve a value from a variable
IF/ELSE IF / ELSE   show conditional branches in logic
WHILE               show looping logic
END                 the end of the program

```


START

# Given a collection of integers called "numbers"
numbers = [5,3,2,0,4,8,5,7,6,]

SET iterator = 1
                                   5
SET saved_number = value within the numbers collection at space 1

         1       is less than               9      
WHILE iterator      <          length of the numbers array

  SET current_number = value within numbers collection at space "iterator"
    current_number =                                              5

        1                             5
        1         is less than        5 
  IF saved_number     >=        current_number
    go to the next iteration

  ELSE 
        1        is now     5
    saved_number  =      current_number
    
  increment by 1 until iterator is 9,  then break
  iterator = iterator + 1

PRINT saved_number

END
```

Translated to code:

```ruby
numbers_array = [5,3,2,0,4,8,5,7,6,]


def find_greatest(numbers)
  saved_number = nil

  
  numbers.each do |num|
  puts "this is num: #{num}"
  puts "this is saved_number: #{saved_number}"
    saved_number || = num  # what is the || operator ?
                           # assign the first value of the array to 
                           # to begin the comparison of the following numbers
  puts "this is num: #{num}"
  puts "this is saved_number: #{saved_number}"                   
    if saved_number >=   num
      next
    else
      saved_number = num
    end
  end

  saved_number
end
```


Flow Charts:

Think in binary terms, every comes down to zero or one. 
The flow chart should break down every step to the binary
level

A flow chart is a way to map out the logic of my program step by step.

Low level languages use the imperative or procedural way to solve a problem:
x = [1,2,3,4,5]

Specifically map out every single step to iterate over the array x
- pass in index 0
- add index 0 to 1
- place the evaluated result in a new array in index location 0
- pass in index 1
- add index 1 to 1
- place the evaluated result in a new array in index location 1


High level languages like Ruby use the declaritive way to solve problems:
x = [1,2,3,4,5]

Iterate over the array x
x.each
x.map

When I move logic to sub-processes, I am able to use a declarative type of syntax, rather than imperative. I can say "find_largest", rather than outline step by step how the logic should be. Thinking about the high level logic flows allows me to create sub-processes to narrow down the scope of my application. From a high level, writing declarative code segments my program into logical sections, allowing me to focus on ONE section at a time.

This is an example of a high level pseudo code containing a subprocess line
```
while user wants to keep going
  - ask the user for a collection of numbers
  - extract the largest one from that collection and save it
  - ask the user if they want to input another collection

return saved list of numbers
```

Subprocess: 
This line should be a subprocess
```
- extract the largest one from that collection and save it
```

Break down the subprocess:
```
while user wants to keep going
  - ask the user for a collection of numbers
  # subprocess begins here
  - iterate through the collection one by one.
    - save the first value as the starting value.
    - for each iteration, compare the saved value with the current value.
    - if the saved value is greater, or it's the same
      - move to the next value in the collection
    - otherwise, if the current value is greater
      - reassign the saved value as the current value
  - after iterating through the collection, save the largest value into the list.
  # subprocess ends here
  - ask the user if they want to input another collection

return saved list of numbers
```


Translated into formal pseudo code:
```
START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  SET largest_number = SUBPROCESS "extract the largest one from that collection"
  large_numbers.push(largest_number)
  GET "enter another collection?"
  IF "yes"
    keep_going = true
  ELSE
    keep_going = false
  IF keep_going == false
    exit the loop

PRINT large_numbers

END
```


Start at a high level, using declarative syntax. For example, if you're working on a calculator, you can start with something like this: 
Then breakdown each subprocess.
```
- Get the first number
  - Make sure it's valid, otherwise, ask for another
- Get the second number
  - Make sure it's valid, otherwise, ask for another
- Get the operator
  - Make sure it's valid, otherwise, ask again

- Perform operation on the two numbers
- Display result
- Ask if user wants to do another calculation
```






PEDAC:
PEDAC stands for: Understand the Problem, Write Examples/Test Cases, Data Structure, Algorithm, and Code. PEDAC is a step-by-step problem-solving process that we recommend and teach at Launch School.

A programming algorithm is a computer procedure that is a lot like a recipe (called a procedure) and tells your computer precisely what steps to take to solve a problem or reach a goal. The ingredients are called inputs, while the results are called the outputs.


