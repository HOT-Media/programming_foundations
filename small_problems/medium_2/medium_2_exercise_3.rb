def letter_percentages(input_str)
  strarr = input_str.chars
  percentage = {}
  percentage[:uppercase] = strarr.count { |char| char =~ /[A-Z]/ }
  percentage[:lowercase] = strarr.count { |char| char =~ /[a-z]/ }
  percentage[:neither] = strarr.count { |char| char =~ /[^a-zA-Z]/ }
  calculate_percentage(percentage, input_str)
end

def calculate_percentage(hsh, str)
  hsh.merge!(hsh) { |_key, value| (value.to_f / str.length.to_f) * 100 }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
