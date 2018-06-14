
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

!http://d1b1wr57ag5rdp.cloudfront.net/images/flowchart_components.jpg

!http://d1b1wr57ag5rdp.cloudfront.net/images/flowchart_largest.jpg



