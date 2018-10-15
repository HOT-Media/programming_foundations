Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Example:

```ruby
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']



x = %w(abcdefghijklmnopqrstuvwxyz)
=> ["abcdefghijklmnopqrstuvwxyz"]

x[0].delete "aeiou"
=> "bcdfghjklmnpqrstvwxyz"


y = %w(green YELLOW black white)
=> ["green", "YELLOW", "black", "white"]







arr.map do |idx|
  idx.delete "aeiouAEIOU"
end



iterate through each element and remove the vowels

put the new element in a new array





def remove_vowels(arr)

  %w= arr[0].delete "aeiou"

end

a.scan(/aeiou/)

a[/[aeiou](.)\1/, 2] 




a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/,


/(?<vowel>[aeiou])


x[1] = x[0].delete "aeiou"


********

def remove_vowels (arr)
  arr.join " "
  arr[0] = arr[0].delete "aeiouAEIOU"
  arr[0].split(//)
end


["green", "YELLOW", "black", "white"]


**********************

def remove_vowels (arr)
arr.map do |idx|
  idx.delete "aeiouAEIOU"
end
end













