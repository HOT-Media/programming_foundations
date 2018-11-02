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

vowels
=> ["t",
 "h",
 "e",
 "q",
 "u",
 "i",
 "c",
 "k",
 "b",
 "r",
 "o",
 "w",
 "n",
 "f",
 "o",
 "x",
 "j",
 "u",
 "m",
 "p",
 "e",
 "d",
 "o",
 "v",
 "e",
 "r",
 "t",
 "h",
 "e",
fix the regex









