A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Examples:
```ruby
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true


B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M


split the word into an array

array of blocks
  [B O].include both

hash of kv blocks 
hash {"B" => "O"}


str = "BATCH"

does "BATCH" include one value of the block
  no 
  next

does "BATCH" include one value of the block
  yes
  does "BATCH" include the second value of that block
  yes
    false




iterate through the kv pairs

  is "B" a key or value of kv pair 1
                           kv pair 2
                           kv pair 3
  no
  next kv pair
  is "B" a key or value of kv pair 1
                           kv pair 2
                           kv pair 3
  yes => key
          does str_arr include value key
          does the str_arr include the value associated with the key that matches 


split the string into an array of characters
string.char

str_arr
=> ["B", "A", "T", "C", "H"]


str_arr.include spelling block 1
"B" "O"

"BOX"

str_arr.regex

str.match pair "B:O" match both
false


word regex match true or false


"hello".include? "lo"   #=> true
"hello".include? "ol"   #=> false


'BATCH'.inlclude "#{block_arr[0]}"



blocks = "B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M"


letter_blocks =
{"B"=>"O",
 "X"=>"K",
 "D"=>"Q",
 "C"=>"P",
 "N"=>"A",
 "G"=>"T",
 "R"=>"E",
 "F"=>"S",
 "J"=>"W",
 "H"=>"U",
 "V"=>"I",
 "L"=>"Y",
 "Z"=>"M"}


letter_blocks["B"]
=> "O"

'BATCH'.include? "#{letter_blocks["B"]}"
=> false

h.each {|key, value| puts "#{key} is #{value}" }

h = { "a" => 100, "b" => 200 }

h.each {|key, value| puts "#{key} is #{value}" }
produces:

a is 100
b is 200

letter_blocks =
{"B"=>"O",
 "X"=>"K",
 "D"=>"Q",
 "C"=>"P",
 "N"=>"A",
 "G"=>"T",
 "R"=>"E",
 "F"=>"S",
 "J"=>"W",
 "H"=>"U",
 "V"=>"I",
 "L"=>"Y",
 "Z"=>"M"}

letter_blocks.each {|key, value| puts "#{key} is #{value}" }


"BATCH".include


letter_blocks.each do |key, value| 
if "BATCH".include?("#{key}") && "BATCH".include?("#{value}")
  puts 'include'
else
  puts 'not'
end





block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true



LETTER_BLOCKS =
{"B"=>"O",
 "X"=>"K",
 "D"=>"Q",
 "C"=>"P",
 "N"=>"A",
 "G"=>"T",
 "R"=>"E",
 "F"=>"S",
 "J"=>"W",
 "H"=>"U",
 "V"=>"I",
 "L"=>"Y",
 "Z"=>"M"}



def block_word?(str)
  LETTER_BLOCKS.each do |key, value| 
  if "str".include?("#{key}") && "str".include?("#{value}")
    puts 'include'
  else
    puts 'not'
  end
end




str
=> "BATCH"
str.include?(LETTER_BLOCKS["B"])
=> false
str.include?(LETTER_BLOCKS.key("O"))
=> true








def block_word?(str)
  LETTER_BLOCKS.each do |key, value| 
    return false if "str".include?("#{key}") && "str".include?("#{value}")
  end
end
















