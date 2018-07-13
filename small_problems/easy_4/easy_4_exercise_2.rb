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
def century(year)
  cent = ''
  suffix = ''
  year_array = [[1],[1,0],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9]]
  year_array2 = [[2],[2,0],[2,2],[2,3],[2,4],[2,5],[2,6],[2,7],[2,8],[2,9]]
  year_array3 = [[3],[3,0],[3,2],[3,3],[3,4],[3,5],[3,6],[3,7],[3,8],[3,9]]

  if year.digits[0,2] == [0,0]
    cent = year/100
  elsif (1..100).include? year
    cent = 1
  else
    cent = year.to_i / 100 + 1
  end

  if year_array.include?cent.digits[0,2] 
    suffix = 'st'
  elsif  year_array2.include?cent.digits[0,2]
    suffix = 'nd'
  elsif year_array3.include?cent.digits[0,2]
    suffix = 'rd'
  elsif (4..9).include? cent
    suffix = 'th'
  elsif [[4,1],[3,1],[2,1]].include?cent.digits[0,2]
    suffix = 'th'
  elsif cent
    suffix = 'th'
  end
  cent.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(10203) == '103rd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
