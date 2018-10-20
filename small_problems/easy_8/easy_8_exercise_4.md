Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:

Examples:
```ruby
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]











def sum_of_sums(arr)
  substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }

  substrings 
end







substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }

substrings 


substrings
=> ["a", "ab", "abc", "abcd", "abcde"]

count = arr.length


5 strings 0 .. -1
4 strings 1 .. -1
3 strings 2
2 strings 3
1 string  4

count = 0


substrings = []

  arr.length.times do |idx| 
    idx = 0
          1
          2
          3
          4
    substrings << arr[idx .. -1]

substrings




def sum_of_sums(arr)
  substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }

  substrings 
end


5 strings 0 .. -1
4 strings 1 .. -1
3 strings 2
2 strings 3
1 string  4

substrings
=> ["a", "ab", "abc", "abcd", "abcde"]


substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }









def substrings(arr)
  substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }

  substrings 
end



substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


substrings('abcde')
=> ["a", "ab", "abc", "abcd", "abcde"]


substrings = [] # same collection array

  do this again but from idx 1 to -1 1 less time 
  arr.length.times {|idx| substrings << arr[0 .. idx] }

  substrings 


substrings = [] # same collection array

elements_to_append = arr.length => 5

  loop do this again but from idx 1 to -1 1 less time and from element 1
    elements_to_append.times {|idx| substrings << arr[0 .. idx] }
    elements_to_append -=1 => 4 
    break if elements_to_append == arr.length
  end


  substrings 




substrings = [] # same collection array

elements_to_append = arr[0].length => 5

  loop do this again but from idx 1 to -1 1 less time and from element 1
    elements_to_append.times {|idx| substrings << arr[0 .. idx] }
    elements_to_append.times {|idx| substrings << arr[-(idx) .. -1] }
    elements_to_append -=1 => 4 
    break if elements_to_append == arr.length
  end


  substrings 



substrings = [] # same collection array

elements_to_append = arr[0].length => 5

  loop do this again but from idx 1 to -1 1 less time and from element 1
    elements_to_append.times {|idx| substrings << arr[0 .. idx] }

    elements_to_append.times {|idx| substrings << arr[0][-(idx) .. -1] }
    elements_to_append -=1 => 4 
    break if elements_to_append == arr.length
  end


  substrings 




substrings = [] # same collection array

elements_to_append = arr[0].length

  loop do 
    elements_to_append.times {|idx| substrings << arr[0][-(idx) .. -1] }
    elements_to_append -=1
    break if elements_to_append == 0
  end


  substrings 




["abcde",
 "e",
 "de",
 "cde",
 "bcde",
 "abcde",
 "e",
 "de",
 "cde",
 "abcde",
 "e",
 "de",
 "abcde",
 "e",
 "abcde"]

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]



arr
=> ["abcde"]

substrings = [] # same collection array

elements_to_append = arr[0].length # => 5

starting_element = 0
  loop do
          #5                    0      []                   -5  .. -1  => abcde 
    elements_to_append.times {|idx| substrings << arr[0][-(idx) .. -1] }

          #5                    0      []                0   0.    a  
    elements_to_append.times {|idx| substrings << arr[0][0..idx] }
substrings
=> ["a", "ab", "abc", "abcd", "abcde"]



            #4                  0      []                1b..idx1
    elements_to_append.times {|idx| substrings << arr[0][0..idx] }




    elements_to_append -=1
    break if elements_to_append == 0
  end


  substrings


substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }

  substrings 



arr
=> ["abcde"]

substrings = [] # same collection array

elements_to_append = arr[0].length # => 5

starting_element = 0
  loop do

          #5                    0      []                0   0.    a  
  elements_to_append.times {|idx| substrings << arr[0][0..idx] }
  substrings
  => ["a", "ab", "abc", "abcd", "abcde"]

arr
=> ["a bcde"]

  elements_to_append -= 1 
                                                 arr["a bcde"]
         #4                  0      []                1b..idx1
  elements_to_append.times {|idx| substrings << arr[0][0..idx] }




    elements_to_append -=1
    break if elements_to_append == 0
  end


  substrings


substrings = []

  arr.length.times {|idx| substrings << arr[0 .. idx] }

  substrings 

arr[0].slice!(0)=> "a" arr => ["bcde"]




arr
=> ["abcde"]

substrings = [] # same collection array

elements_to_append = arr[0].length # => 5

starting_element = 0
  loop do

          #5,4                    0      []                0   0.    a  
  arr.length.times {|idx| substrings << arr[0][0..idx] }
  substrings
  => ["a", "ab", "abc", "abcd", "abcde"]

arr
=> ["abcde"]
                                                 arr["a bcde"]
         #4              0      []                0b  0.1,2,3
  arr[0].length.times {|idx| substrings << arr[0][0..idx] }

  arr[0].slice!(0) => bcde cde de e 

    break if arr[0].empty? == 0
  end


  substrings
arr[0].slice!(0)=> "a" arr => ["bcde"]


first iteration  substring abcde
second iteration slice abcde to bcde
arr.length = 4
=3=2=1


substrings = []

arr = ["abcde"]
loop do 
         #4              0      []                0b  0.1,2,3
  arr[0].length.times {|idx| substrings << arr[0][0..idx] }

  arr[0].slice!(0) # => bcde cde de e 

    break if arr[0].empty?
  end

substrings




arr[0].slice!(0)=> "a" arr => ["bcde"]


first iteration  substring abcde
second iteration slice abcde to bcde
arr.length = 4
=3=2=1




["a", "ab", "abc", "abcd", "abcde",
 "b", "bc", "bcd", "bcde",
 "c", "cd", "cde",
 "d", "de",
 "e"
]


def substrings(str)

substrings = []

arr = ["abcde"]
loop do 
         #4              0      []                0b  0.1,2,3
  arr[0].length.times {|idx| substrings << arr[0][0..idx] }

  arr[0].slice!(0) # => bcde cde de e 

    break if arr[0].empty?
  end

substrings


substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]




def substrings(str)
  substrings = []

  loop do 
           #4              0      []                0b  0.1,2,3
   str.length.times {|idx| substrings << str[0..idx] }

    str.slice!(0) # => bcde cde de e 

      break if str.empty?
    end

  substrings
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]



*************************************************JMX
def substrings(str)
  substrings = []
  loop do 
    str.length.times { |idx| substrings << str[0..idx] }
    str.slice!(0)
    break if str.empty?
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

*************************************************LS 

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end













