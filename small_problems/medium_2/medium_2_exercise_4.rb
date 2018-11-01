def balanced?(str)
  paren_str = ''
  str.chars.each do |char|
    paren_str << char if char == "(" || char == ")"
  end
  paren_syntax_validation(paren_str)
end

def paren_syntax_validation(str)
  return false if str[0] == ")" || str[-1] == "("
  str.count("(") == str.count(")")
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
