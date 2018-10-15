Write a method that takes an Array of Integers between 0 and 19, 
and returns an Array of those Integers
sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

```ruby
method                (arg).to_a
                      (range).to_a

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
```

sort based on the engilsh words for each number

zero z last

eight e first

enter an array of numbers between 0 and 19

they want the array sorted based on the alphabetical order of the english words for each integer


get the value of each english word for the integer

eight e first smallest


zero z last  largest <=> 


create a kv for numbers and words

```ruby




integer_word_kv = {0 => 'zero',1 =>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine',10=>'ten',11=>'eleven', 12=>'twelve',13=> 'thirteen', 14=>'fourteen', 15=>'fifteen',16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'}



integer_word_kv
=> {0=>"zero",
 1=>"one",
 2=>"two",
 3=>"three",
 4=>"four",
 5=>"five",
 6=>"six",
 7=>"seven",
 8=>"eight",
 9=>"nine",
 10=>"ten",
 11=>"eleven",
 12=>"twelve",
 13=>"thirteen",
 14=>"fourteen",
 15=>"fifteen",
 16=>"sixteen",
 17=>"seventeen",
 18=>"eighteen",
 19=>"nineteen"}



iterate through the array of Integers
create a new array of the words associated with the numbers
arr = [2,4,7,1,8,4,12]

word_array = arr.map do |int|
  integer_word_kv[int]
end

word_array
=> ["two", "four", "seven", "one", "eight", "four", "twelve"]


word_array.sort
=> ["eight", "four", "four", "one", "seven", "twelve", "two"]






sorted array of nested arrays words and numbers



number_words_array
=> ["zero",
 "one",
 "two",
 "three",
 "four",
 "five",
 "six",
 "seven",
 "eight",
 "nine",
 "ten",
 "eleven",
 "twelve",
 "thirteen",
 "fourteen",
 "fifteen",
 "sixteen",
 "seventeen",
 "eighteen",
 "nineteen"]





alphabetic_number_sort.map do |indx|
  number_words_array.indx
end



arr.map {|idx| number_words_array[idx]}
=> ["two", "four", "seven", "one", "eight", "four", "twelve"]



arr.map {|idx| number_words_array[idx]}.sort
=> ["eight", "four", "four", "one", "seven", "twelve", "two"]


attach the word to the integer in an array [8,eight]

sort the nested arrays by the word

.map the number from the sorted arrays


iterate through the input_integer_array




sortarr = []
=> []
sortarr[0] = input_integer_array[0]
=> 8

sortarr
=> [8]
sortarr << number_words_array[8]
=> [8, "eight"]
sortarr
=> [8, "eight"]




create a new array with the input number and the associated word

sortarr = []
=> []
sortarr[0] = input_integer_array[0]
=> 8


=> [8, "eight"]

number_word_nested_arrays = input_integer_array.map do |int| # => 8, eight [8,"eight"]



nest those arrays inside anther array called sortarray














sortarr = input_integer_array.map do |int|
  int_word_kv[int] = number_words_array[int]  
end  
=> ["eight",
 "eighteen",
 "eleven",
 "fifteen",
 "five",
 "four",
 "fourteen",
 "nine",
 "nineteen",
 "one",
 "seven",
 "seventeen",
 "six",
 "sixteen",
 "ten",
 "thirteen",
 "three",
 "twelve",
 "two",
 "zero"]
int_word_kv
=> {8=>"eight",
 18=>"eighteen",
 11=>"eleven",
 15=>"fifteen",
 5=>"five",
 4=>"four",
 14=>"fourteen",
 9=>"nine",
 19=>"nineteen",
 1=>"one",
 7=>"seven",
 17=>"seventeen",
 6=>"six",
 16=>"sixteen",
 10=>"ten",
 13=>"thirteen",
 3=>"three",
 12=>"twelve",
 2=>"two",
 0=>"zero"}
int_word_kv.to_a
=> [[8, "eight"],
 [18, "eighteen"],
 [11, "eleven"],
 [15, "fifteen"],
 [5, "five"],
 [4, "four"],
 [14, "fourteen"],
 [9, "nine"],
 [19, "nineteen"],
 [1, "one"],
 [7, "seven"],
 [17, "seventeen"],
 [6, "six"],
 [16, "sixteen"],
 [10, "ten"],
 [13, "thirteen"],
 [3, "three"],
 [12, "twelve"],
 [2, "two"],
 [0, "zero"]]



sortarr
=> [[1, "one"], [0, "zero"], [5, "five"], [8, "eight"]]
sorted_words = sortarr.map { |indx| indx.reverse}.sort
=> [["eight", 8], ["five", 5], ["one", 1], ["zero", 0]]
sorted_words.map {|idx| idx[0]}
=> ["eight", "five", "one", "zero"]






























int_word_kv = {}

int_word_kv[int] = number_words_array[int]




int_word_kv = {}
=> {}

int_word_kv[8] = number_words_array[8]
=> "eight"
int_word_kv
=> {8=>"eight"}
int_word_kv.to_a
=> [[8, "eight"]]



int_word_kv ={}
sortarr = input_integer_array.map do |int|
  int_word_kv[int] = number_words_array[int]
end






NUMBER_WORDS_ARRAY = ["zero",
 "one",
 "two",
 "three",
 "four",
 "five",
 "six",
 "seven",
 "eight",
 "nine",
 "ten",
 "eleven",
 "twelve",
 "thirteen",
 "fourteen",
 "fifteen",
 "sixteen",
 "seventeen",
 "eighteen",
 "nineteen"]













************************************



alphabetic_number_sort((0..19).to_a)

def alphabetic_number_sort(input_integer_array)
  int_word_kv = {}

  input_integer_array.map do |int|
    int_word_kv[int] = NUMBER_WORDS_ARRAY[int]
  end

  sorted_words = int_word_kv.map { |indx| indx.reverse}.sort

  sorted_words.map {|idx| idx[1]}
end




=> ["eight", "five", "one", "zero"]






sorted_words = int_word_kv.map { |indx| indx.reverse}.sort


=> [["eight", 8].map{|idx| idx.reverse}
kv = {8=>"eight"}
kv.map {|idx| idx.reverse }




NUMBER_WORDS_ARRAY = ["zero",
                      "one",
                      "two",
                      "three",
                      "four",
                      "five",
                      "six",
                      "seven",
                      "eight",
                      "nine",
                      "ten",
                      "eleven",
                      "twelve",
                      "thirteen",
                      "fourteen",
                      "fifteen",
                      "sixteen",
                      "seventeen",
                      "eighteen",
                      "nineteen"]


# bad
a = [1, 2, 3,
  4, 5, 6]
array = ['run',
     'forrest',
     'run']

# good
a = [1, 2, 3,
     4, 5, 6]
a = ['run',
     'forrest',
     'run']


# bad
something.map { |s| s.upcase }

# good
something.map(&:upcase)



  sorted_words = int_word_kv.map {&:reverse}.sort



def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end






























