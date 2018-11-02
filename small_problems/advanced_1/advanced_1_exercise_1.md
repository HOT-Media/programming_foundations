Let's build another program using madlibs. We made a program like this in the easy exercises. This time, the requirements are a bit different.

Make a madlibs program that

reads in

some text

from a text file

that you have created, and then

plugs in

a selection

of randomized nouns, verbs, adjectives, and adverbs

into

that text and 

prints it. 

You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program.

the text data should come from a file or other external source. 

Your program should read this text,

and for each line,

it should place

random

words of the appropriate types

into the text,

and print the result.

The challenge of this program isn't about writing your program; it's about choosing how to represent your data. Choose the right way to structure your data, and this problem becomes a whole lot easier.

This is why we don't show you what the input data looks like; 

the input representation is your responsibility.

Example output:

The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.

```ruby

puts "Enter a nown:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? Thats hilarious!"




the text file has the sentences
the .rb file loads the sentences
the .rb file inserts the verbs nowns etc from an array .random
into the sentences from the text file



text file has strings that are preformatted 

text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"

"I #{verb} my "
"Do you #{verb} your #{adjective} #{noun} #{adverb}? Thats hilarious!"


The sleepy brown cat noisily licks the sleepy yellow dog, 
who lazily licks his tail and looks around.


The cold rain quickly cleaned the sandy shoes.
The hot sun heated the sand on the beach and made the water bright blue.

"The #{adjective}cold #{nown}rain #{adjective}quickly cleaned the sandy shoes.
The hot sun heated the sand on the beach and made the water bright blue."

pry(main)> text = File.read('advanced_1_exercise1_text_file.txt')
=> "The \#{adjective}cold \#{nown}rain \#{adjective}quickly cleaned the sandy shoes.\nThe hot sun heated the sand on the beach and made the water bright blue.\n\n['the dog ran']\n\n\" \#{verb}\""
[10] pry(main)> puts text
The #{adjective}cold #{nown}rain #{adjective}quickly cleaned the sandy shoes.
The hot sun heated the sand on the beach and made the water bright blue.

['the dog ran']

" #{verb}"
=> nil
remove the escapes for


