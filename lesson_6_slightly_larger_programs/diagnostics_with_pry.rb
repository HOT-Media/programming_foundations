require 'pry'
require 'pry-byebug'

brd =  {1=>"O", 2=>"O", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}

[1, 2, 3].find do |key| 
  binding.pry
  brd[key] ==0
end

x.flatten.find{|sq| brd[sq] == " "}

