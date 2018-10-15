def time_of_day(min)
  _, remaining_minutes = min.divmod 1440
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

def time_of_day_refactored(min)
  _, remaining_minutes = min.divmod MINUTES_PER_DAY
  hour, minute = remaining_minutes.divmod MINUTES_PER_HOUR
  "#{format('%0.2d', hour)}:#{format('%0.2d', minute)}"
end

p time_of_day_refactored(0) == "00:00"
p time_of_day_refactored(-3) == "23:57"
p time_of_day_refactored(35) == "00:35"
p time_of_day_refactored(-1437) == "00:03"
p time_of_day_refactored(3000) == "02:00"
p time_of_day_refactored(800) == "13:20"
p time_of_day_refactored(-4231) == "01:29"
