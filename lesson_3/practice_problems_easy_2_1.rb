munsters_description = "The Munsters are creepy in a good way."

conversion1 = munsters_description.split
conversion1[1].downcase!
conversion1.join(" ")
=> "The munsters are creepy in a good way."

conversion2 = munsters_description.split.each {|element| element.swapcase!}.join(" ")
=> "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."


conversion3 = munsters_description.split.each {|element| element.downcase!}.join(" ")
=> "the munsters are creepy in a good way."


conversion4 = munsters_description.split.each {|element| element.upcase!}.join(" ")
=> "THE MUNSTERS ARE CREEPY IN A GOOD WAY."



munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!