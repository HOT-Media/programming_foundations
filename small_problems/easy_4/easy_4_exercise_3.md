In the modern era under the Gregorian Calendar:

+ if the year is evenly divisible by 4 or evenly divisible by 4, 100 and 400 => leap year
+ if the year is evenly divisible by 4 and 100 it is not a leap year

Assume this rule is good for any year greater than year 0.

Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.


```ruby
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

```


if 
[0,1,1]   array[0] == 0 and array.inject > 0   leap year
elsif
[0,0,0]   array.inject == 0 leap year
else
not leap year

rules

leap years can meet one of two requirements:
+ year % 4 == 0
+ year % 4, year % 100, and year % 400 all == 0 

Otherwise, year is not a leap year


year = 16 
16 % 4 == 0
=> leap year

year = 100
100 % 4 = 0  100 % 100 = 0 
=> not leap year

year = 1600
1600 % 4 = 0
1600 % 100 = 0
1600 % 400 = 0
=> leap year


get year
calculate the year mod  4,100, 400
SUBPROCESS evaluate if the year meets the criteria for a leap year
return true or false


SUBPROCESS
if year mod 4 == 0 leap year 
if year mod 4 == 0  || year mod 100 == 0  not leap year 

if mod 4 == 0 and mod 100 == 0 and year mod 400 true leap year 

[4,100,400] iterate through criteria array
1st iteration year % index 0
2 idx 1
3 idx 2

add the result of all 3 iterations

if == 0  => leap year 
if array.running_total == 0 => leap year
array.map
array.inject enumerable


I need to know if the year entered is evenly divisible by 4, 100, and 400
I need to know what the evaluated result of the year entered % 4,100, and 400

year mod 4
year mod 100
year mod 400

I need to save the evaluated results for a comparison operator later

first do calculation and get an array

I need to use the results in the array to determine the leap year or not

year 1600

[0,0,0]

year 200 not leap year
[0,0,200]

arr.inject == 0 leap year

arr[0] == 0 and arr[1] == 0 not leap year
arr[0] + arr[1] > 0 not leap year



if arr[0] == 0 && arr[1] + arr[2] > 0 leap year
if arr[0] 



[0,0,0] leap year

[0,1,]


[0,0,0] ly
[0,1,1] ly
[0,0,1] not ly


%4 = 0 STOP
%4 != 0 STOP


%4 = 0  % 100 = 0 STOP
%4 = 0  %100 != 0 STOP


%4 %100 %400 = 0 STOP
%4 %100 %400 != 0 STOP




```ruby




year = 1600

def is_this_a_leap_year (entered_year)

  if entered_year % 4 != 0
    return false
  elsif entered_year % 4 == 0 && entered_year % 100 == 0
    return false
    

criteria_array = [4,100,400]


criteria_array.map {|idx| year % idx}.inject {|sum,n| sum + n}











year = 1600

def is_this_a_leap_year (entered_year)

criteria_array = [4,100,400]


leap_year_modulus_array = criteria_array.map {|idx| entered_year % idx}.inject {|sum,n| sum + n}

 leap_year_modulus_array == 0



end











leap_year_modulus_array.inject {|sum,n| sum + n}




leap_year_modulus_array[0] == 0 && leap_year_modulus_array[1] != 0









year = 100
year = 16

if year % 4  == 0  && year % 100 == 0 && year % 400 == 0
  true

if true and true || false

  if


when 
a = 5
=> 5
   answer = case a
   when 5  
     "a is 5"  
   when 6  
     "a is 6"  
   else  
     "a is not 6"
   end  
=> "a is 5"
   
   p answer
"a is 5"
=> "a is 5"




year = 1600

def this_a_leap_year (entered_year)

criteria_array = [4,100,400]


leap_year_modulus_array = criteria_array.map {|idx| entered_year % idx}.inject {|sum,n| sum + n}

if leap_year_modulus_array[0] == 0 && leap_year_modulus_array.inject {|sum,n| sum + n} > 0
 leap year
elsif leap_year_modulus_array.inject {|sum,n| sum + n} == 0
  leap year
else
  not a leap year
  end





if 
[0,1,1]   array[0] == 0 and array.inject > 0   leap year
elsif
[0,0,0]   array.inject == 0 leap year
else
not leap year







year = 1600

def this_a_leap_year (entered_year)

criteria_array = [4,100,400]

leap_year_modulus_array = criteria_array.map {|idx| entered_year % idx}

if leap_year_modulus_array[0] == 0 && leap_year_modulus_array.inject {|sum,n| sum + n} > 0
 puts 'leap year'
elsif leap_year_modulus_array.inject {|sum,n| sum + n} == 0
  puts 'leap year'
else
  puts 'not a leap year'
  end



2100 
[0,0,1] not leap year 


[0,1,1]   array[0] == 0 and array.inject > 0   leap year
elsif
[0,0,0]   array.inject == 0 leap year
else
not leap year

rules

leap years can meet one of two requirements:
+ year % 4 == 0
+ year % 4, year % 100, and year % 400 all == 0 

if leap_year_modulus_array == [0,0,0] 
  puts 'leap year'
elsif leap_year_modulus_array == [0,1,1] 
  puts 'leap year'
else
  puts 'not leap year'




year = 1600

def this_a_leap_year (entered_year)

criteria_array = [4,100,400]

leap_year_modulus_array = criteria_array.map {|idx| entered_year % idx}

if leap_year_modulus_array == [0,0,0] 
  puts 'leap year'
elsif leap_year_modulus_array[1] + leap_year_modulus_array[2] > 0 && leap_year_modulus_array[0] == 0
  puts 'leap year'
elsif leap_year_modulus_array[0] != 0
  puts 'not a leap year'
    
else
  puts 'not leap year'
end
end



this_a_leap_year year





&&  &&  &&  && 

||  ||  ||  ||  

|| || 

if x && y || z
    do something
end


a = 1
b = 2
c = 3
d = 4
e = 5
f = 6
g = 1
h = 2
i = 3

       true          true    OR is never evaluated
                                because BOTH sides
                                of the AND expression
                                are TRUE
if (a + b == c) && (g == a) || (a == 1)
    p "The OR operator is never evaluated because both sides
    of the && AND operator are true"
    end
# returns    
=> "The OR operator is never evaluated because both sides 
of the && AND operator evaluated to true"








```


