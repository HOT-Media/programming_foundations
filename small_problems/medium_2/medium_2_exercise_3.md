In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries:

one represents the percentage of characters in the string that are lowercase letters,
one the percentage of characters that are uppercase letters, 
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples
```ruby
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }




find method I already wrote

string.length / number of uppercase lowercase and neither
10           /           6
10           /         0.6
=> math - calculate percentage from any integer or ratio

count case, and neither

str =~/[A-Z]/
str =~ /[a-z]/
str =~ /[^a-zA-Z]/
str.chars.count { |char| str =~/[A-Z]/ } #=> 3


str.chars.count |char| 

 uppercase str =~/[A-Z]/ }
  str =~ /[a-z]/
  str =~ /[^a-zA-Z]/

first count the respective characters

save the count

lowercase
uppercase
neither

count the length of the string

calculate percent of string for lc uc nei, 




count_case = [str =~/[A-Z]/, str =~ /[a-z]/, str =~ /[^a-zA-Z]/]


updat the hash values
percentages = {lowercase: 0, uppercase: 0, neither: 0}


str = "My Pooch"
=> "My Pooch"
char_array = str.chars
=> ["M", "y", " ", "P", "o", "o", "c", "h"]



how_many = [strarr =~/[A-Z]/, strarr =~ /[a-z]/, strarr =~ /[^a-zA-Z]/]


how_many.each do |idx|
  str =~/[A-Z]/


str.chars.count { |char| str =~/[A-Z]/ } #=> 3



count_case = [str =~/[A-Z]/, str =~ /[a-z]/, str =~ /[^a-zA-Z]/]


char_array = str.chars
=> ["M", "y", " ", "P", "o", "o", "c", "h"]

count the characters that meet the criteria

interate through the chars array 
  does "M" match howmay 0 
  1+ uppercase

  char_array



  helper method?


  2 things were trying to meet

  count characters 
    3 catagorieis



  figure percentage



char_array = str.chars
=> ["M", "y", " ", "P", "o", "o", "c", "h"]

count_case = [str =~/[A-Z]/, str =~ /[a-z]/, str =~ /[^a-zA-Z]/]


count_case = [str =~/[A-Z]/, str =~ /[a-z]/, str =~ /[^a-zA-Z]/]

count_hash = {uppercase: ucc}


char_array = ["M", "y", " ", "P", "o", "o", "c", "h"]

char_array.each do |char|
    str =~/[A-Z]/
    str =~ /[a-z]/, str =~ /[^a-zA-Z]/

str
=> "My Pooch"
strarr = str.chars
=> ["M", "y", " ", "P", "o", "o", "c", "h"]

uppercase = strarr.count { |char| char =~ /[A-Z]/ }
lowercase = strarr.count { |char| char =~ /[a-z]/ }
neither = strarr.count { |char| char =~ /[^a-zA-Z]/ }



str
=> "My Pooch"
strarr = str.chars
=> ["M", "y", " ", "P", "o", "o", "c", "h"]

def count(str)
uppercase = strarr.count { |char| char =~ /[A-Z]/ }
=> 2
lowercase = strarr.count { |char| char =~ /[a-z]/ }
=> 5
neither = strarr.count { |char| char =~ /[^a-zA-Z]/ }
=> 1


def count(str)
  strarr = str.chars
  percentage = {uppercase: 0, lowercase: 0, neither: 0}
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage
end

def calculate_percent(str)

  count(str).each_value do |value|
    value math percentage 
  end
end




str = 'AbCd +Ef'
=> "AbCd +Ef"
str.length
=> 8
count str
=> {:uppercase=>3, :lowercase=>3, :neither=>2}



def calculate_percent(str)
  count(str).each_value do |value|
    #(3.0/8.0)* 100
    # => 37.5
    (value.to_f/str.length.to_f) * 100
  end
end
def calculate_percent(str)
  count(str).each_value do |value|
    #(3.0/8.0)* 100
    # => 37.5
   value = (value.to_f/str.length.to_f) * 100
  end
end

h.each {|key, value|  "#{key} is #{value}" }

h.each {|key, value|  
 }

h
=> {:uppercase=>3, :lowercase=>3, :neither=>2}
h[:uppercase] = 4



def count(str)
  strarr = str.chars
  percentage = {uppercase: 0, lowercase: 0, neither: 0}
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage
end

def calculate_percent(str)

  count(str).each_value do |value|
    value math percentage 
  end
end

percentage
=> {:uppercase=>2, :lowercase=>5, :neither=>1}


str
=> "AbCd +Ef"
count str
=> {:uppercase=>3, :lowercase=>3, :neither=>2}



percentage[:uppercase] = (percentage[:uppercase].to_f/str.length.to_f) * 100
=> 37.5

percentage.each_value |value|

  3


count(str).map! do |key,value|
    #(3.0/8.0)* 100
    # => 37.5
    (value.to_f/str.length.to_f) * 100
  end




evens = (1..10).each_with_object({}) { |i, a| a << i*2 }




def count(str)
  strarr = str.chars
  percentage = {uppercase: 0, lowercase: 0, neither: 0}
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage
end


def count(str)
  strarr = str.chars  
  percentage = {uppercase: 0, lowercase: 0, neither: 0}  
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }  
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }  
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }  
  percentage  
end  
=> :count

count str
=> {:uppercase=>3, :lowercase=>3, :neither=>2}
str
=> "AbCd +Ef"

count str
=> {:uppercase=>3, :lowercase=>3, :neither=>2}










def count(str)
  strarr = str.chars  
  percentage = {uppercase: 0, lowercase: 0, neither: 0}  
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }  
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }  
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }  
  percentage  
end  



str
=> "AbCd +Ef"

count str
=> {:uppercase=>3, :lowercase=>3, :neither=>2}



percentage = count(str)
=> {:uppercase=>3, :lowercase=>3, :neither=>2}



percentage[:uppercase] = (percentage[:uppercase].to_f/str.length.to_f) * 100
=> 37.5

percentage
=> {:uppercase=>37.5, :lowercase=>3, :neither=>2}

percentage[:lowercase] = (percentage[:lowercase].to_f/str.length.to_f) * 100
=> 37.5

percentage[:neither] = (percentage[:neither].to_f/str.length.to_f) * 100
=> 25.0

percentage
=> {:uppercase=>37.5, :lowercase=>37.5, :neither=>25.0}


percentage[:uppercase] = updated value


array instead

[:uppercase, 0]


str
=> "AbCd +Ef"
strflt = str.length.to_f
=> 8.0


counts = [[:uppercase, 0], [:lowercase, 0], [:neither, 0]]

counts[0][1] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
=> 1
counts
=> [[:uppercase, 1], [:lowercase, 0], [:neither, 0]]

counts.map! do |idx|
  ((idx[1]).to_f / strflt) * 100
end



str
=> "AbCd +Ef"
strflt = str.length.to_f
=> 8.0


counts = [[:uppercase, 0], [:lowercase, 0], [:neither, 0]]

def count_array(str)
strarr = str.chars
strflt = str.length.to_f
counts = [[:uppercase, 0], [:lowercase, 0], [:neither, 0]]
counts[0][1] = strarr.count { |char| char =~ /[A-Z]/ }
counts[1][1] = strarr.count { |char| char =~ /[a-z]/ }
counts[2][1] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
counts
end



=> 1
counts
=> [[:uppercase, 1], [:lowercase, 0], [:neither, 0]]







def calculate_percent(arr)
counts.map! do |idx|
  ((idx[1]).to_f / strflt) * 100
end



def calculate_percent(arr,string_length_as_float)
  arr.map! do |idx|
    ((idx[1]).to_f / string_length_as_float) * 100
  end
end



def calculate_percent(arr,string_length_as_float)
  arr.map! do |idx|  
    ((idx[1]).to_f / string_length_as_float) * 100    
  end    
end  
=> :calculate_percent
calculate_percent(arr,8.0)
=> [37.5, 37.5, 25.0]


def calculate_percent(arr,string_length_as_float)
  arr.map do |idx|  
   idx[1] = 4  
  end    
end  


[:uppercase, 1]









def count_array(str)
strarr = str.chars
strflt = str.length.to_f
counts = [[:uppercase, 0], [:lowercase, 0], [:neither, 0]]
counts[0][1] = strarr.count { |char| char =~ /[A-Z]/ }
counts[1][1] = strarr.count { |char| char =~ /[a-z]/ }
counts[2][1] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
counts
end






((counts[0][1]).to_f / string_length_as_float) * 100  


((counts[0][1]).to_f / string_length_as_float) * 100  
=> 37.5


counts
=> [[:uppercase, 3], [:lowercase, 3], [:neither, 2]





def count_array(str)
strarr = str.chars
strflt = str.length.to_f
counts = [[:uppercase, 0], [:lowercase, 0], [:neither, 0]]
counts[0][1] = strarr.count { |char| char =~ /[A-Z]/ }
counts[1][1] = strarr.count { |char| char =~ /[a-z]/ }
counts[2][1] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
counts
end




def count(str)
  strarr = str.chars
  percentage = {uppercase: 0, lowercase: 0, neither: 0}
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage
end














str
=> "AbCd +Ef"




str = "AbCd +Ef"

def count_hash(str)
  strarr = str.chars    
  percentage = {uppercase: 0, lowercase: 0, neither: 0}    
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }    
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }    
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }    
  percentage
end



=> :count
def count_array(str)
  strarr = str.chars
  strflt = str.length.to_f
  counts = [[:uppercase, 0], [:lowercase, 0], [:neither, 0]]
  counts[0][1] = strarr.count { |char| char =~ /[A-Z]/ }
  counts[1][1] = strarr.count { |char| char =~ /[a-z]/ }
  counts[2][1] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  counts
end  
=> :count_array
count str
=> {:uppercase=>3, :lowercase=>3, :neither=>2}
count_array str
=> [[:uppercase, 3], [:lowercase, 3], [:neither, 2]]


percentage[:uppercase] = (percentage[:uppercase].to_f/str.length.to_f) * 100
=> 37.5

percentage
=> {:uppercase=>37.5, :lowercase=>3, :neither=>2}

percentage[:lowercase] = (percentage[:lowercase].to_f/str.length.to_f) * 100
=> 37.5

percentage[:neither] = (percentage[:neither].to_f/str.length.to_f) * 100
=> 25.0

percentage
=> {:uppercase=>37.5, :lowercase=>37.5, :neither=>25.0}






str = "AbCd +Ef"
=> "AbCd +Ef"
def count_hash(str)
  strarr = str.chars      
  percentage = {uppercase: 0, lowercase: 0, neither: 0}      
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }      
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }      
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }      
  percentage  
end  
=> :count_hash
strng = "AbCd +Ef"
=> "AbCd +Ef"
count_hash strng
=> {:uppercase=>3, :lowercase=>3, :neither=>2}



how do I update each value?

uclun_count = {:uppercase=>3, :lowercase=>3, :neither=>2}







str = "AbCd +Ef"
def letter_percentages(str)
  strarr = str.chars      
  percentage = {uppercase: 0, lowercase: 0, neither: 0}      
  percentage[:uppercase] = ((strarr.count { |char| char =~ /[A-Z]/ }).to_f/str.length.to_f) * 100     
  percentage[:lowercase] = ((strarr.count { |char| char =~ /[a-z]/ }).to_f/str.length.to_f) * 100      
  percentage[:neither] = ((strarr.count { |char| char =~ /[^a-zA-Z]/ }).to_f/str.length.to_f) * 100      
  percentage  
end  



letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }






*************************************************JMX


str = "AbCd +Ef"
=> "AbCd +Ef"
def letter_percentages(str)
  strarr = str.chars        
  percentage = {uppercase: 0, lowercase: 0, neither: 0}        
  percentage[:uppercase] = ((strarr.count { |char| char =~ /[A-Z]/ }).to_f/str.length.to_f) * 100       
  percentage[:lowercase] = ((strarr.count { |char| char =~ /[a-z]/ }).to_f/str.length.to_f) * 100        
  percentage[:neither] = ((strarr.count { |char| char =~ /[^a-zA-Z]/ }).to_f/str.length.to_f) * 100        
  percentage    
end  




=> :letter_percentages
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
=> true
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
=> true
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
=> true



*************************************************REFACTOR helper method

 "AbCd +Ef"
def letter_percentages(str)
  strarr = str.chars        
  percentage = {uppercase: 0, lowercase: 0, neither: 0}        
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }       
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }        
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage    
end  

letter_percentages("AbCd +Ef")


letter_percentages("AbCd +Ef")
=> {:uppercase=>3, :lowercase=>3, :neither=>2}






.to_f/str.length.to_f) * 100


def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end


"AbCd +Ef"
def letter_percentages(str)
  string_length_as_float = str.length.to_f
  strarr = str.chars        
  percentage = {uppercase: 0, lowercase: 0, neither: 0}        
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }       
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }        
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage # => {:uppercase=>3, :lowercase=>3, :neither=>2}
  calculate_percentage(percentage,string_length_as_float)   
end  

letter_percentages("AbCd +Ef")



def calculate_percentage(hsh,strfloat)
  hsh.merge!(hsh) { |key, value| (value.to_f / strfloat) * 100 }
end




letter_percentages("AbCd +Ef")
=> {:uppercase=>3, :lowercase=>3, :neither=>2}


calculate_
percentage = {:uppercase=>3, :lowercase=>3, :neither=>2}

how do I update the value for percentage[:uppercase]
.to_f/str.length.to_f) * 100

percentage[:uppercase]
=> 3


 percentage.merge! {|k,v|  v = (v.to_f / str.length.to_f)*100}


h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge!(h2) { |key, v1, v2| v1 }
                #=> {"a"=>100, "b"=>200, "c"=>300}
h1              #=> {"a"=>100, "b"=>200, "c"=>300}

hash = {:uppercase=>3, :lowercase=>3, :neither=>2}
=> {:uppercase=>3, :lowercase=>3, :neither=>2}
hash.merge!(hash) { |key, value| (value.to_f / str.length.to_f) * 100 }
=> {:uppercase=>37.5, :lowercase=>37.5, :neither=>25.0}
hash
=> {:uppercase=>37.5, :lowercase=>37.5, :neither=>25.0}










"AbCd +Ef"
def letter_percentages(str)
  string_length_as_float = str.length.to_f
  strarr = str.chars        
  percentage = {uppercase: 0, lowercase: 0, neither: 0}        
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }       
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }        
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  percentage # => {:uppercase=>3, :lowercase=>3, :neither=>2}
  calculate_percentage(percentage,string_length_as_float)   
end  





def calculate_percentage(hsh,strfloat)
  hsh.merge!(hsh) { |key, value| (value.to_f / strfloat) * 100 }
end

letter_percentages("AbCd +Ef")





*************************************************JMX REFACTORED

def letter_percentages(input_str)
  strarr = input_str.chars
  percentage = {}
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  calculate_percentage(percentage, input_str)
end

def calculate_percentage(hsh, str)
  hsh.merge!(hsh) { |_key, value| (value.to_f / str.length.to_f) * 100 }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }










































