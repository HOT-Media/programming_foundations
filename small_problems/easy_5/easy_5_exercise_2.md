The time of day can be represented as the number of minutes before or after midnight. 

If the number of minutes is positive, the time is after midnight. 

If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns 
the time of day in 24 hour format (hh:mm). 

Your method should work with any integer input.

You may not use rubys Date and Time classes.

Examples:
```ruby
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
```
```ruby

minutes - integer

starting time 00:00 or integer 0000 to string with : inbetween 00 00



ending time   24:00 or integer 2400 to string 24  : 00 



adding minutes up to 59

59  => 0059 to str + :

minutes integer = minutes string 
59  = '59'


minutes integer 60 and up

integer >= 60 

divide integer by 60 for the hours string

60

60 / 60 = 1   hours string '01'

800.divmod 60
=> [13, 20]


hours, minutes = 800.divmod 60
=> [13, 20]
hours
=> 13


hours, minutes = 3000.divmod 60
=> [50, 0]
hours
=> 50
hours.divmod 24
=> [2, 2]
50%24


hour, minutes = num.divmod(60)




if the hour is greater than 24 
  hour / 24 = hour              25/24 = 1    25 hours is 1 day and 1 hour so the hour 



up to 24 hours =>


hours, minutes = 35.divmod 60
=> [0, 35]



hours, minutes = 35.divmod 60
=> [0, 35]
hours
=> 0
minutes
=> 35
hours.to_s
=> "0"
minutes.to_s
=> "35"
hours+ ':'+minutes
TypeError: String can't be coerced into Integer
from (pry):1458:in `+'
"#{hours} + ':'+ #{minutes}
"
=> "0 + ':'+ 35\n"
"#{hours} +:+ #{minutes}"
=> "0 +:+ 35"
"#{hours}:#{minutes}"
=> "0:35"
 format "00:35"






def time_of_day(min)
  hours, minutes = min.divmod(60)
  "#{hours}:#{minutes}"
end

time_of_day(800)
=> "13:20"


time_of_day(35)  # add formatting
=> "0:35"


time_of_day(3000) # if the min entered is greater than 1440 then divmod the hours by 24
=> "50:0"

case min
when 1440 then '00:00'
when >1440 

else hours, minutes = min.divmod(60)



"#{hours}:#{minutes}"



def time_of_day(min)
  min = 1440 + min if min.negative?

  hours, minutes = min.divmod(60)

  if hours == 24 && minutes == 0
    hours = 0
  elsif hours > 24
     days, hours = hours.divmod 24
  end
  "#{hours}:#{minutes}"
end

def 





hours, minutes = 3000.divmod 60
=> [50, 0]
hours
=> 50
days, hour = hours.divmod 24
=> [2, 2]
days
=> 2
hour
=> 2






time_of_day(-4231) 

70 31 minutes

4231%1440
=> 1351
1440-1351
=> 89
time_of_day 89
=> "1:29"




def time_of_day(min)
  min = 1440 + min if min.negative?

  hours, minutes = min.divmod(60)

  if hours == 24 && minutes == 0
    hours = 0
  elsif hours > 24
     days, hours = hours.divmod 24
  end
  "#{hours}:#{minutes}"
end

def 



def time_of_day(min)
  min = 1440 + min if min.negative?

  hours, minutes = min.divmod(60)

  if hours == 24 && minutes == 0
    hours = 0
  elsif hours > 24
     days, hours = hours.divmod 24
  end
  "#{hours}:#{minutes}"
end



if the minutes are greater than 1440 , one day then mod 1440 and use those minutes


def time_of_day(min)

  hours, minutes = min.divmod(60)

  if hours == 24 && minutes == 0
    hours = 0
  elsif hours > 24
     days, hours = hours.divmod 24
  end
  "#{hours}:#{minutes}"
end


if min > 1440
  minutes, 




strip the days with divmod 1440 positive or negative


=> [-1, 1437]
time_of_day(1437)
=> "23:57"


calculate hours and minutes from stripped days





def time_of_day(min)
  min = 1440 + min if min.negative?

  hours, minutes = min.divmod(60)

  if hours == 24 && minutes == 0
    hours = 0
  elsif hours > 24
     days, hours = hours.divmod 24
  end
  "#{hours}:#{minutes}"
end

def 

def time_of_day(min)
  days, remaining_minutes = min.divmod 1440
  hour, minute = remaining_minutes.divmod 60
  "#{hour}:#{minute}"
end

sprintf("%0.2d", 1)

time_of_day(0) 
time_of_day(-3)
time_of_day(35) 
time_of_day(-1437) 
time_of_day(3000)
time_of_day(800) 
time_of_day(-4231) 






def time_of_day(min)
  days, remaining_minutes = min.divmod 1440
  hour, minute = remaining_minutes.divmod 60
  "#{sprintf("%0.2d", hour)}:#{sprintf("%0.2d", minute)}"
end


def time_of_day(min)
  days, remaining_minutes = min.divmod 1440
  hour, minute = remaining_minutes.divmod 60
  "#{format('%0.2d', hour)}:#{format('%0.2d', minute)}"
end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"



"#{sprintf("%0.2d", hour)}:#{sprintf("%0.2d", minute)}"

"#{format('%0.2d', hour)}:#{format('%0.2d', minute)}"

EnforcedStyle: format (default)
# bad
puts sprintf('%10s', 'hoge')
puts '%10s' % 'hoge'

# good
puts format('%10s', 'hoge')



EnforcedStyle: sprintf
# bad
puts format('%10s', 'hoge')
puts '%10s' % 'hoge'

# good
puts sprintf('%10s', 'hoge')



EnforcedStyle: percent
# bad
puts format('%10s', 'hoge')
puts sprintf('%10s', 'hoge')

# good
puts '%10s' % 'hoge'




def time_of_day(min)
  days, remaining_minutes = min.divmod 1440
  hour, minute = remaining_minutes.divmod 60
  "#{format('%0.2d', hour)}:#{format('%0.2d', minute)}"
end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"











MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60


def time_of_day(min)
  _, remaining_minutes = min.divmod MINUTES_PER_DAY
  hour, minute = remaining_minutes.divmod MINUTES_PER_HOUR
  "#{format('%0.2d', hour)}:#{format('%0.2d', minute)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"












