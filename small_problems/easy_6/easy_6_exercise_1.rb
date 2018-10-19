DEGREE = "\xC2\xB0"

def dms(num)
  degrees = num.to_i
  num_as_float = num.to_f
  move_decimal_4_to_the_left = num / 0.0001
  minutes_and_seconds = move_decimal_4_to_the_left.divmod 10000
  minutes = minutes_and_seconds[1].to_i
  minutes_calculation = minutes * 60 * 0.0001
  minutes_integer  = minutes_calculation.to_i
  seconds = minutes_calculation.divmod 1
  seconds_2_digits = seconds[1] / 0.01
  seconds_integer = seconds_2_digits.to_i
  seconds_integer_calculation = seconds_integer * 60 / 100
  formatted_min =  "%02d" % minutes_integer
  formatted_sec =  "%02d" % seconds_integer_calculation
  out = %(#{degrees}#{DEGREE}#{formatted_min}'#{formatted_sec}")
end


puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)