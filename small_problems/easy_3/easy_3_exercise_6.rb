def xor?(first_arg, second_arg)
  if first_arg == false && second_arg == true
    return true
  elsif first_arg == true && second_arg == false
    return true
  elsif first_arg == true && second_arg == true
    return false
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end


def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end



