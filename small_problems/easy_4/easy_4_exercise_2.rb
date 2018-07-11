=begin 
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. 
So, the years 1901-2000 comprise the 20th century.

input
integer number

output
the century number as a string
with the appropriate suffix: st, nd, rd, th

rules
1 = st
2 = nd
3 = rd
4 = 9 th
0 = th
11 = th
12 = th
13 = th


Model the problem:
determine the century
assign a suffix


what determines the century
the number of digits 3 digits  year = 100   
                                year / 100 = 1 + 1 = 2nd centruy unless year == 100
                                year = 1100
                                year / 100 = 11 + 1 12th centruy unless year == 1100
                                year = 1999
                                year / 100 = 19 + 1 = 20th century unless year == 1900

year = 2000



determine the century 
year.length
year.end_with "00"
year.split(//).first  
(1..100).include? year

determine the suffix
suffix = century_number % 10

9th century is either 900 or 8




Test cases:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
=end 

puts "Enter a year "
year_entered = gets.chomp

def determine_century(year)
 if year.inspect.end_with?('00')
       #.end_with? "00"
    year.to_i/100
  elsif (1..100).include? year.to_i
    1
  else
    year.to_i / 100 + 1
  end
end

century = determine_century(year_entered)


def determine_suffix(cent)
  if cent == 1
    'st'
  elsif cent == 2
    'nd'
  elsif cent == 3
    'rd'
  elsif (4..9).include? cent
    'th'
  elsif cent == 11 || cent == 12 || cent == 13
    'th'
  end
end

suffix = determine_suffix(century) 

puts century.to_s + suffix
