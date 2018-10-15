Write a method that takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples
```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


interate through the words 

str.split
=> ["Four", "score", "and", "seven."]


count the characters of each element

save the results in a collection






def word_sizes(str)
  word_size_collection = {}
  str.split.each do |word|
    if word_size_collection.key?(word.length)
       word_size_collection[word.length] += 1
     else
      word_size_collection[word.length] = 1
    end
  end
  word_size_collection
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}





def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end


first_hash = Hash.new(0)
=> {}
first_hash[1] += 1
=> 1
first_hash
=> {1=>1}
second_hash = {}
=> {}
second_hash[1] += 1
=> returns what? and Why?

NoMethodError: undefined method `+' for nil:NilClass
from (pry):2437:in `__pry__'

because second hash is assigned to an empty hash where first_hash is a New Hash




def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end



























