Modify the word_sizes method from the previous exercise to exclude non-letters when 
determining word size. For instance, the length of "it's" is 3, not 4.

Examples

```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
```

regex// a .. z ..


wordsizes .map! to to nested array

split .regex map char
if char != a..z .delete
  each word arr =[] == each word size hash .uniq => hash 
  {3 characters => number of words that have that many characters}

  "dog is my puppy"
  {2 characters  => 2 words, 3 characters => 1 word, 4 characters => 1 word}


  eachwordarr.count
  .sort
 counted_words = {}
 counted_words[2 characters] = 1 word
 => {2 words => 1 word}
