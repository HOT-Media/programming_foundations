Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds.

You should use a:

degree symbol (°) to represent degrees,
a single quote (') to represent minutes
and a double quote (") to represent seconds.

A degree has 60 minutes, while a minute has 60 seconds.

Examples:
```ruby

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

degrees minutes seconds   

degree = 60 minutes

minute = 60 seconds

seconds

float input  60

degree  minutes seconds

degrees = float / 60




the digits before the . represent the angle


the digits after the . are the minutes and seconds
after calculated are 2 digits, 2 digits.round sprint%(00) to 2 digits but always 2 digits


output is a %(str)
%(integerDEGREE  integer" integer')


angle, minutes, seconds

%(90°      00'      00")

(93.034773)            ==      %(93°02'05")

degrees in degrees out 


calculate minutes / seconds

93.034773
   min     sec
00.03      4773


00:00

60: 60 
60 minutes 60 seconds


6 is 60  is 60:00

60 * 60 = 3600 = 36:00

dms(254.6) == %(254°36'00") 234 36  00


dms(76.73) == %(76°43'48")   76   
       7300
       73 * 60 => 4380
                    80*60 => 4800




intege passed in

int_arg = 254.6

DEGREES = int_arg.to_i


DEGREES = 254


remove the degree characters, 1 char, 2 chars, or 3 chars

degrees will be an integer that is either 1 char, 2 chars or 3 chars


int_arg = 254.6 
degree chars are 3

convert 254 to a string


dms = 264.6/0.0001
=> 2646000.0
dms
=> 2646000.0
dms.to_i
=> 2646000


dms = 76.73/0.0001
=> 767300.0
dms.to_i
=> 767300



dms(30) == %(30°00'00")

if int_arg.integer?

DEGREES only no minutes or seconds


else
  dms__int = num_arg / 0.0001

dms = 76.73/0.0001
=> 767300.0
dms.to_i
=> 767300


num_arg = 76.73

dms_str = num_arg / 0.0001

dms_int = dms_str.to_i

dms_int 




num_arg = 76.73
=> 76.73
dms_str = num_arg / 0.0001
=> 767300.0
dms_int = dms_str.to_i
=> 767300
dms_int
=> 767300




num_arg = 254.6

DEGREES = num_arg.to_i


DEGREES = 254


num_arg = 76.73
=> 76.73
dms_str = num_arg / 0.0001
=> 767300.0
dms = dms.to_i.to_s
=> "767300"
dms
=> "767300"

minutes = dms[2..3]
=> "73"


seconds = dms[4..-1]
=> "00"


num_arg = 254.6

DEGREES = num_arg.to_i


DEGREES = 254



DEGREE = "\xC2\xB0"

num_arg
=> 254.6

degrees = num_arg.to_i
=> 254
dms_str = num_arg / 0.0001
=> 2546000.0
dms_str = dms_str.to_i.to_s
=> "2546000"
seconds = dms_str[4..-1]
=> "000"
seconds = dms_str[-2..-1]
=> "00"
minutes = dms_str[-4..-3]
=> "60"
degrees
=> 254
seconds
=> "00"
minutes
=> "60"





degrees
=> 254
minutes = dms_str[-4..-3].to_i
=> 60
seconds = dms_str[-2..-1].to_i      format %s(00)
=> 0


%(254°36'00")

%(#{degrees}#{DEGREES}#{minutes}'#{seconds}")


%(#{DEGREE})
=> "°"



****************************************************


DEGREE = "\xC2\xB0"

def dms (num_arg)
#num_arg
# => 254.6

degrees = num_arg.to_i
# => 254



dms_str = num_arg / 0.0001
#=> 2546000.0
dms_str = dms_str.to_i.to_s
#=> "2546000"
minutes = dms_str[-4..-3].to_i * 0.6
#=> 60

seconds = dms_str[-2..-1].to_i  # %s format
# => 0
%(#{degrees}#{DEGREE}#{minutes.to_i}'#{seconds}")

end


%sformat

dms 30
=> "30°0'0\""
dms 76.73
=> "76°43'0\""   # wrong output
dms 0
=> "0°0'0\""
dms 360
=> "360°0'0\""




3 inputs

before the decimal
  can be:
  1 digit
  2 digits
  3 digits


after the decimal there has to be 4 digits to work with
.1 => .10  00  
  format the num_arg to 4 decimal places first
1st and 2nd digits after the decimal

3rd and 4th digits after the decimal


30.0000.to_s

int_arg % 

extract the degrees
  before the decimal

extract minutes
.00

.60 is 60 minutes?
.0060 is 60 seconds? 



extract seconds
.0000

 whole units of degrees will remain the same (e.g., if your figure is 121.135 degrees longitude, start with 121 degrees).
Multiply the decimal portion of the figure by 60 (e.g., .135 * 60 = 8.1).
The whole number becomes the minutes (8).
Take the remaining decimal and multiply it by 60 (e.g., .1 * 60 = 6).
The resulting number becomes the seconds (6 seconds). Seconds can remain as a decimal if needed.
Take your three sets of numbers and put them together, (e.g., 121°8'6" longitude would be equivalent to 121.135 degrees longitude).



Print one position after the decimal          printf("'%.1f'", 10.3456);  '10.3'

Two positions after the decimal               printf("'%.2f'", 10.3456);  '10.35'

Eight-wide, two positions after the decimal   printf("'%8.2f'", 10.3456); '   10.35'

Eight-wide, four positions after the decimal  printf("'%8.4f'", 10.3456); ' 10.3456'

Eight-wide, two positions after the decimal,  printf("'%08.2f'", 10.3456);  '00010.35'
zero-filled

Eight-wide, two positions after the decimal,  printf("'%-8.2f'", 10.3456);  '10.35   '
left-justified

Printing a much larger number with that same  format printf("'%-8.2f'", 101234567.3456); '101234567.35'
that same format









