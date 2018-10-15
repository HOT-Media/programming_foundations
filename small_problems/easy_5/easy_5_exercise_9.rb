def crunch(str)
  collect = []
  str.split(//).map { |idx| collect << idx if idx != collect.last }
  collect.join
end
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
