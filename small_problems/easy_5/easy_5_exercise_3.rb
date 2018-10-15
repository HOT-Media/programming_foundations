MINUTES_IN_A_DAY = 1440

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

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
