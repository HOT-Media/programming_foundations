Write a method that takes a string, and then returns a hash that contains 3 entries:

one represents the number of characters in the string that are lowercase letters, 
one the number of characters that are uppercase letters, 
and one the number of characters that are neither.

Examples
```ruby

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


str.{}

"hello^world".count "\\^aeiou" #=> 4
"hello".include? "lo"   

"Ruby".match?(/R.../, 1) #=> false




str[0] == str[0].uppercase...   lowercase...   not character

create a hash with the keys already ther and nil values


  if its an upcase letter then 

    {lowercase => nil, uppercase => nil, neither => nil}




str = "Dog"


case_char_count  = {:lowercase=>0, :uppercase=>0, :neither=>0}

split the string up and identify its case and type of character
  str.split(//)


is the character == the character.downcase?
chr == chr.downcase
  yes  - its lowercase
    lcc[:lowercase] +=1





str = "Dog"


case_char_count  = {:lowercase=>0, :uppercase=>0, :neither=>0}

str.split(//).map do |chr|
  case_char_count[:neither] += 1 if chr.match?(/[^a-zA-Z]/)
  if chr == chr.downcase # chr is lowercase
    case_char_count[:lowercase] += 1
  else
    case_char_count[:uppercase] += 1
  end
end



"123".match?(/[^a-zA-Z]/)
=> true








family = Hash.new{"This is the default value when the key does not exist: Wendy, Jeremy, Piper"  }

family['Piper'] = "Cute Pup"

family
=> {"Piper"=>"Cute Pup"}

family['Jeremy']
=> "This is the default value when the key does not exist: Wendy, Jeremy, Piper"



family_symbols = { Piper: "Cute Pup", Wendy: "Cute Wife" }

family_symbols
=> {:Piper=>"Cute Pup", :Wendy=>"Cute Wife"}



family_symbols = { Piper: nil, Wendy: nil }


"a".match(/"a-zA-Z"/)



*************************************************JMX

def letter_case_count(str)
  case_char_count  = {:lowercase=>0, :uppercase=>0, :neither=>0}
  str.split(//).map do |chr|
    if chr.match?(/[^a-zA-Z]/)
      case_char_count[:neither] += 1
    elsif chr == chr.downcase # chr is lowercase
      case_char_count[:lowercase] += 1
    else
      case_char_count[:uppercase] += 1
    end
  end
  case_char_count
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }










