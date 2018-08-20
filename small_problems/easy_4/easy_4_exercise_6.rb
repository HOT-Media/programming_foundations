Write a method that searches for all multiples 
of 3 or 5 that lie between 1 and some other number, 
and then computes the sum of those multiples. 
For instance, if the supplied number is 20,
 the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,
54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99

5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100

1 -> 10   3,6,9  5,10

10
multiple_3 = 3
multiple_5 = 5

loop do
  main_counter = 0


  multiples = nil
