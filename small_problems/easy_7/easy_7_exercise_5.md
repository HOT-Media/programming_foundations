Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:
```ruby

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

CASE_HASH

.split.map idx CASE_HASH...


split the string into an array of words

split the words into an array of character

split the string into all characters

index 0  is upcase
index 1 is downcase
if index 2 is a space or non letter ignore into
index 3 is downcase
index 4 is upcase

even index is upcase
odd index is downcase


array.split.length


str = 'I Love Launch School!'


str.split(//).length
=> 21


str.split(//).length.times do |idx|
  if str[idx].match?(/[^a-zA-Z]/)
    str[idx]
  elsif str[idx].odd?
    str[idx].upcase
  else
    str[idx].downcase
  end
end
str.join(" ")



str.split(//).map do |idx|
  count




*************************************************JMX
str_array = str.split(//)

index_counter = 0

loop do
  if str_array[index_counter].match?(/[^a-zA-Z]/)
    str_array[index_counter]
  elsif index_counter.odd? 
    str_array[index_counter].upcase!
  else
    str_array[index_counter].downcase!
  end
  index_counter += 1
  break if index_counter == str_array.length
end
str_array.join()




def staggered_case(str)
  str_array = str.split(//)
  index_counter = 0
  loop do
    if str_array[index_counter].match?(/[^a-zA-Z]/)
      str_array[index_counter]
    elsif index_counter.odd? 
      str_array[index_counter].upcase!
    else
      str_array[index_counter].downcase!
    end
    index_counter += 1
    break if index_counter == str_array.length
  end
  str_array.join()
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'




*************************************************JMX

def staggered_case(str)
  str_array = str.split(//)
  str_array[0].upcase!
  index_counter = 1
  loop do
    if str_array[index_counter].match?(/[^a-zA-Z]/)
      str_array[index_counter]
    elsif index_counter.odd? 
      str_array[index_counter].downcase!
    else
      str_array[index_counter].upcase!
    end
    index_counter += 1
    break if index_counter == str_array.length
  end
  str_array.join()
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

















