Using the each method,
write some code to output all of the vowels from the strings.


```ruby
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []
hsh.each do |key,value|
  value.each do |element|
    element.each_char do |chr| 
      vowels << chr =~ /[aeiou]/
    end
  end
end

=> {:first=>["the", "quick"],
 :second=>["brown", "fox"],
 :third=>["jumped"],
 :fourth=>["over", "the", "lazy", "dog"]}

a hash containing 5 kv pairs, 
th keys are symbols
the values are arrays

the arrays have elements that are strings

the strings need to be split into characters

the characters need to be regex for vowel
if it is a vowel put it in an arrays




*************************************************JMX 
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


arr = []
hsh.each do |key, value|
  value.join.chars.each {|chr| arr << chr if chr =~ /[aeiou]/}
end

arr
=> ["e", "u", "i", "o", "o", "u", "e", "o", "e", "e", "a", "o"]























