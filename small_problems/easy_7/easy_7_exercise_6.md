Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. 

The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

Example:
```ruby
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'



.split.map idx CASE_HASH... if idx(/integer/) idx else CASE_HASH(idx)






def staggered_case(string)
  result = ''
  need_upcase = true  # to toggle true or false on each iteration of string
  string.chars.each do |char|
    char if charif char =~ /[^A-Za-z]/
    if need_upper    # true here
      result += char.upcase  # so upcase here and add to the result string
    else
      result += char.downcase
    end
                              # end the .each iteration
    need_upper = !need_upper if char =~ /[^A-Za-z]/  # change the value of need_upper
  end
  result
end



puts "not letter" if char =~ /[^A-Za-z]/ 





start with upcase
  need upcase == true

start by identifying if the character is a letter or not
if not letter
  char
elsif condition

char if charif char =~ /[^A-Za-z]/ # returns nil but checks if its in there or not









def staggered_case(string)
  result = ''

  need_upper = true  # to toggle true or false on each iteration of string





  string.chars.each do |char|
    if need_upper    # true here
      result += char.upcase  # so upcase here
    else
      result += char.downcase
    end
                              # end the .each iteration
    need_upper = !need_upper unless char =~ /[^A-Za-z]/   # change the value of need_upper
  end







  result
end

toggle if its a letter only


def staggered_case(string)
  result = ''
  need_upper = true  # to toggle true or false on each iteration of string
  string.chars.each do |char|
    if need_upper    # true here
      result += char.upcase  # so upcase here
    else
      result += char.downcase
    end
                              # end the .each iteration
    need_upper = !need_upper unless char =~ /[^A-Za-z]/   # change the value of need_upper
  end
  result
end


*************************************************JMX



def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper unless char =~ /[^A-Za-z]/
  end
  result
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'





*************************************************LS 


def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i       # returns 0 or nil, everything in ruby is true except nil, 
                              # 0 is true, so if char =~ /[a-z]/i is true then upcase
                              # or downcase, 
                              # if false add char to the result string
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end


char =~ /[a-z]/i







