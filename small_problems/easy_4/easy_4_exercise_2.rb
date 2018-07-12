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

ye900 = 900
ye1989 = 1989
ye2000 = 2000
ye2001 = 2001

yes900 = '900'
yes1989 = '1989'
yes2000 = '2000'
yes2001 = '2001'




string argument
def determine_century(year)
 if year.end_with?('00')
    year.to_i/100
  elsif (1..100).include? year.to_i
    1
  else
    year.to_i / 100 + 1
  end
end

century = determine_century(year_entered) # string argument





combine it all into one method




suffix = determine_suffix(century) 

puts century.to_s + suffix


determine_suffix 1
determine_suffix 2
determine_suffix 3
determine_suffix 4
determine_suffix 5
determine_suffix 6
determine_suffix 7
determine_suffix 8 
determine_suffix 9
determine_suffix 10
determine_suffix 11
determine_suffix 12
determine_suffix 13
determine_suffix 14
determine_suffix 15
determine_suffix 16
determine_suffix 17
determine_suffix 18
determine_suffix 19
determine_suffix 20
determine_suffix 200
determine_suffix 2000
determine_suffix 2001
determine_suffix 20001
determine_suffix 2012
determine_suffix 2011
determine_suffix 2013
determine_suffix 2023
determine_suffix 2053
determine_suffix 2032
determine_suffix 2021
determine_suffix 2020


def determine_suffix(cent) #integer passed in
  if cent.digits[0,2] == [1] ||  cent.digits[0,2] == [1,0] || 
    'st'
  elsif cent.digits[0,2] == [2]
    'nd'
  elsif cent.digits[0,2] == [3]
    'rd'
  elsif (4..9).include? cent
    'th'
    elsif [[4,1],[3,1],[2,1]].include?cent.digits[0,2]
    'th'
  elsif cent
    'th'
  end
end


determine_suffix(determine_century(2001))

21st 
22nd
23rd

  year_array = [[1,0],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9]]
year_array.include?cent.digits[0,2]


def determine_suffix(cent) #integer passed in
  year_array = [[1],[1,0],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9]]
  year_array2 = [[2],[2,2],[2,3],[2,4],[2,5],[2,6],[2,7],[2,8],[2,9]]
  year_array3 = [[3],[3,2],[3,3],[3,4],[3,5],[3,6],[3,7],[3,8],[3,9]]
  if #cent.digits[0,2] == [1] ||  cent.digits[0,2] == [1,0] || 
    year_array.include?cent.digits[0,2] 
    'st'
  elsif #cent.digits[0,2] == [2]
       year_array2.include?cent.digits[0,2]     
    'nd'
  elsif year_array3.include?cent.digits[0,2]
    #cent.digits[0,2] == [3]
    'rd'
  elsif (4..9).include? cent
    'th'
    elsif [[4,1],[3,1],[2,1]].include?cent.digits[0,2]
    'th'
  elsif cent
    'th'
  end
end
