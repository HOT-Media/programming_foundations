array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

 
array1.each { |value| array2 << value }

                     .upcase! modifies the values in array1
                     The values in array 2 "are" the values in array 1
                     so they also change. 
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

puts array2

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo