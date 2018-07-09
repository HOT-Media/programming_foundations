def digit_list(number)
  number.to_s.split('').map do |idx|
    idx.to_i
  end
end

or 

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

