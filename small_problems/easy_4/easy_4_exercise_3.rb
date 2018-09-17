
def leap_year? (year)
  return true if year%4 == 0 && year%100 != 0
  return true if  year%4 == 0 && year < 100  
  return true if year%4 ==0 && year%100 == 0 && year%400 == 0
  false
end



leap_year?(2016)
leap_year?(2015)
leap_year?(2100)
leap_year?(2400)
leap_year?(240000)
leap_year?(240001)
leap_year?(2000)
leap_year?(1900)
leap_year?(1752)
leap_year?(1700)
leap_year?(1)
leap_year?(100)
leap_year?(400)
