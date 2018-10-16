Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version.

All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
```ruby

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


CASE_HASH.to_h
=> {"a"=>"A",
 "b"=>"B",
 "c"=>"C",
 "d"=>"D",
 "e"=>"E",
 "f"=>"F",
 "g"=>"G",
 "h"=>"H",
 "i"=>"I",
 "j"=>"J",
 "k"=>"K",
 "l"=>"L",
 "m"=>"M",
 "n"=>"N",
 "o"=>"O",
 "p"=>"P",
 "q"=>"Q",
 "r"=>"R",
 "s"=>"S",
 "t"=>"T",
 "u"=>"U",
 "v"=>"V",
 "w"=>"W",


str.split(" ").map {|idx| CASE_HASH[idx] || CASE_HASH.fetch_value}
