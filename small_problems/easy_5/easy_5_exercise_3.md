As seen in the previous exercise, 
the time of day can be represented as the number of minutes before or after midnight. 

If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, 
and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.

You may not use rubys Date and Time methods.

Examples:
```ruby
after_midnight('00:00') == 0
before_midnight('00:00') == 0

after_midnight('12:34') == 754
before_midnight('12:34') == 686

after_midnight('24:00') == 0
before_midnight('24:00') == 0
```

```ruby

string input 

hour '00' - '24'

minute '00' - '59'


convert hour string to an integer

convert the minute string to an integer



after_midnight     hour * 60 minutes + minute => minutes after midnight
before_midnight    hour * 60 minutes + minute - 1440 => minutes before midnight



calculate the minutes from the hour and minute integers
  1 hour = 1 * 60
  +
  59 minutes => 119 minutes after midnight


after_midnight('12:34') == 754
                                sum of 754 + 686 == 1440
before_midnight('12:34') == 686

01:00 is 60 minutes after midnight
01:00 is 1380 minutes before midnight

def after_midnight(time_str)
  time_str.gsub!(/[:]/, '')# => 1234
  time_str[0..1].to_i * 60 + time_str[2..3].to_i
end



MINUTES_IN_A_DAY = 1440

def before_midnight(time_str)
  time_str.gsub!(/[:]/, '')
   minutes = time_str[0..1].to_i * 60 + time_str[2..3].to_i 
   MINUTES_IN_A_DAY - minutes
end





time_str.gsub!(/[:]/, '')
=> "1234"


time_str[0..1]
=> "12"
time_str[2..3]
=> "34"
time_str[0..1].to_i
=> 12
time_str[2..3].to_i
=> 34


hours = time_str[0..1].to_i
=> 12
minutes = time_str[2..3].to_i
=> 34
hours
=> 12
minutes
=> 34
hours + minutes
=> 46
hours * 60 + minutes
=> 754


1440 - 754
=> 686










def after_midnight(time_str)
  time_str.gsub!(/[:]/, '')# => 1234
  time_str[0..1].to_i * 60 + time_str[2..3].to_i
end



MINUTES_IN_A_DAY = 1440

def before_midnight(time_str)
  time_str.gsub!(/[:]/, '')
   minutes = time_str[0..1].to_i * 60 + time_str[2..3].to_i 
   MINUTES_IN_A_DAY - minutes
end



after_midnight('24:00')
=> 1440




before_midnight('00:00')
=> 1440







def after_midnight(time_str)
  time_str.gsub!(/[:]/, '')
  if time_str == '2400' || time_str == '0000'
    0
  else
    time_str[0..1].to_i * 60 + time_str[2..3].to_i
  end
end



MINUTES_IN_A_DAY = 1440

def before_midnight(time_str)
  time_str.gsub!(/[:]/, '')
  if time_str == '2400' || time_str == '0000'
    0
  else
    minutes_from_hours = time_str[0..1].to_i * 60
    total_minutes = minutes_from_hours + time_str[2..3].to_i
    MINUTES_IN_A_DAY - total_minutes
  end

end



after_midnight('24:00')
=> 1440




before_midnight('00:00')
=> 1440



















