Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

Example text:

Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.


The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

```ruby
split on period spaces
'dog dog dog. ' 

iterate through the array of strings

find longest sentence cat sheep cow method



"1, 2.34,56, . 7".split(%r{,\s*})

=> ["1", "2.34", "56", ". 7"]


string.split(/[!?.](?=\s+\p{Lu})/)




.split(/[!?.](?=\s+\p{Lu})/)


str = "This is a sentence. This is sentence two."



s = "Hello there, my friend. In other words, i.e. what's up, man."
puts 


str.split(/[!?.](?=\s+\p{Lu})/)

str.split(/[!?.](?=\s+\p{Lu})/)


str = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."


str.split(/[!?.](?=\s+\p{Lu})/)
=> ["Four score and seven years ago our fathers brought forth\non this continent a new nation, conceived in liberty, and\ndedicated to the proposition that all men are created\nequal",
 "\n\nNow we are engaged in a great civil war, testing whether\nthat nation, or any nation so conceived and so dedicated,\ncan long endure",
 " We are met on a great battlefield of that\nwar",
 " We have come to dedicate a portion of that field, as\na final resting place for those who here gave their lives\nthat that nation might live",
 " It is altogether fitting and\nproper that we should do this",
 "\n\nBut, in a larger sense, we can not dedicate, we can not\nconsecrate, we can not hallow this ground",
 " The brave\nmen, living and dead, who struggled here, have\nconsecrated it, far above our poor power to add or\ndetract",
 " The world will little note, nor long remember\nwhat we say here, but it can never forget what they\ndid here",
 " It is for us the living, rather, to be dedicated\nhere to the unfinished work which they who fought\nhere have thus far so nobly advanced",
 " It is rather for\nus to be here dedicated to the great task remaining\nbefore us -- that from these honored dead we take\nincreased devotion to that cause for which they gave\nthe last full measure of devotion -- that we here highly\nresolve that these dead shall not have died in vain\n-- that this nation, under God, shall have a new birth\nof freedom -- and that government of the people, by\nthe people, for the people, shall not perish from the\nearth."]


split the paragraph into Sentences

split the sentences into words

strarr = str.split(/[!?.](?=\s+\p{Lu})/)
=> ["Four score and seven years ago our fathers brought forth\non this continent a new nation, conceived in liberty, and\ndedicated to the proposition that all men are created\nequal",
 "\n\nNow we are engaged in a great civil war, testing whether\nthat nation, or any nation so conceived and so dedicated,\ncan long endure",
 " We are met on a great battlefield of that\nwar",
 " We have come to dedicate a portion of that field, as\na final resting place for those who here gave their lives\nthat that nation might live",
 " It is altogether fitting and\nproper that we should do this",
 "\n\nBut, in a larger sense, we can not dedicate, we can not\nconsecrate, we can not hallow this ground",
 " The brave\nmen, living and dead, who struggled here, have\nconsecrated it, far above our poor power to add or\ndetract",
 " The world will little note, nor long remember\nwhat we say here, but it can never forget what they\ndid here",
 " It is for us the living, rather, to be dedicated\nhere to the unfinished work which they who fought\nhere have thus far so nobly advanced",
 " It is rather for\nus to be here dedicated to the great task remaining\nbefore us -- that from these honored dead we take\nincreased devotion to that cause for which they gave\nthe last full measure of devotion -- that we here highly\nresolve that these dead shall not have died in vain\n-- that this nation, under God, shall have a new birth\nof freedom -- and that government of the people, by\nthe people, for the people, shall not perish from the\nearth."]


split the elements into words
count the words and --

words are characters
spaces and commas dont count

strarr = ["Four score and seven years ago our fathers brought forth\non this continent a new nation, conceived in liberty, and\ndedicated to the proposition that all men are created\nequal"]


strarr.map! {|element| element.split(' ')}

[["Four",
  "score",
  "and",
  "seven",
  "years",
  "ago",
  "our",
  "fathers",
  "brought",
  "forth",
  "on",
  "this",
  "continent",
  "a",
  "new",
  "nation,",
  "conceived",
  "in",
  "liberty,",
  "and",
  "dedicated",
  "to",
  "the",
  "proposition",
  "that",
  "all",
  "men",
  "are",
  "created",
  "equal"]]



def most_words(str)
  (substr.sort{|x,y| x.length <=> y.length}).last.join(' ')
end


strarr.map! {|element| element.split(' ')}

strarr = str.split(/[!?.](?=\s+\p{Lu})/)
strarr.map! {|element| element.split(' ')}

(strarr.sort{|x,y| x.length <=> y.length}).last.join(' ')




*************************************************JMX


def most_words(str)
  strarr = str.split(/[!?.](?=\s+\p{Lu})/)  
  strarr.map! {|element| element.split(' ')}  
  (strarr.sort{|x,y| x.length <=> y.length}).last.join(' ')  
end  
=> :most_words



most_words(str)
=> "It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion -- that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth."














