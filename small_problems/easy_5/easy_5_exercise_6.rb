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
