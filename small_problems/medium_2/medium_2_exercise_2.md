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



















