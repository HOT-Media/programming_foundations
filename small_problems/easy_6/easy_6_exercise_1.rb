DEGREE = "\xC2\xB0"

def dms(num)
  degrees = num.to_i
  minutes = (((num / 0.0001).divmod 10000)[1].to_i * 60 * 0.0001).to_i
  seconds = (((((num / 0.0001).divmod 10000)[1].to_i * 60 * 0.0001).divmod 1)[1] / 0.01).to_i * 60 / 100
  formatted_min = format('%02d', minutes)
  formatted_sec = format('%02d', seconds)
  %(#{degrees}#{DEGREE}#{formatted_min}'#{formatted_sec}")
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
