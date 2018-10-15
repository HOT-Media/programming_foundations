


Write a method that SEARCHES for all multiples of 3 or 5 that lie between 1 and some other number, 
and then computes the sum of those multiples.

For instance, if the supplied number is 20, the result should be:
 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).


3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,
54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99

5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100

10 
3,6,9
5,10


20
3,6,9,12,15,18
5,10,15,20



for 10
get user input number
3_multiple_arr = []
5_multiple_arr = []


a multiple of 3 will never be more than 2 from the final number

multiple 3 loop

9
3,6,9
break if multiple_3 == entered_number

or

10
3,6,9 
1 less than 10
break if multiple3 == entered_number -1


11
3,6,9
2 less than 11
break if multiple3 == entered_number -2


end







5 multiple loop 

5
5
break if 5multiple == entered number



6
5
break if multiple5 is between 0 and 4 less than entered number

break if multiple5 is == entered number - 4 is greater than

break the loop if entered number % 5 == 0


if the entered number % 5 is 0 
divide the entered number by 5 
20 / 5 = 4

entered_number_counter = 5

add_5 loop

entered_number_counter += 5

break if enc == entered number





3
3

6
3,6

9
3,6,9

12
3,6,9,12

13
3,6,9,12 + 1

14
3,6,9,12 + 2

15
3,6,9,12,15




10
5,10

15
5,10,15

20
5,10,15,20

21
5,10,15,20 + 1

22 
+2

23
+3

24
+4


25 % 5 =0

12 % 3 = 0


multisum(3) 

one 3
=> 3 



multisum(5)

one 3
one 5 
=> 8



multisum(10) 

3,6,9
5,10
=> 33

multisum(12) 

3,6,9,12 => 30
5,10     => 15
=> 45




entered number is 15




initial_multiple_of_three = 3

multiples_of_three_counter = 3

each iteration 

multiples_of_three_counter =+ 3


**SUBPROCESS** add each multiple of three 3+6+9+12+15


loop until multiple_of_three_counter == 15 


final_computation_of_the_multiples_of_three = **SUBPROCESS** output




initial_multiple_of_five = 5

multiples_of_five_counter = 5

each iteration 

multiples_of_five_counter =+ 5


**SUBPROCESS** add each multiple of five 5+10+15


loop until multiple_of_three_counter == 15 


final_computation_of_the_multiples_of_five = **SUBPROCESS** output



fcotmthree  + fcotmfive





**SUBPROCESS** add each multiple of three 3+6+9+12+15


[3,6,9,12,15].sum

sum_multiples_of_three = [3]

multiple_counter = 3
multiple_counter += 3
count each loop by 3 and break when 15
save the value of the cuurent loop

loop until x = 15

add x + 3 to the array
sum_multiples_of_three << x = 3
sum_multiples_of_three << 3 + 3 = 6
sum_multiples_of_three << 6 + 3 = 9
sum_multiples_of_three << 9 + 3 = 12
sum_multiples_of_three << 12 + 3 = 15

[3,6,9,12,15].sum

return 45

```ruby
m_three = 3
m_five = 5

sum_three_array = []
sum_five_array = []

loop do
  sum_three_array <<  m_three
  break if m_three == 15
  m_three += 3
end


loop do
  sum_five_array <<  m_five
  break if m_five == 15
  m_five += 5
end

sum_three_array.sum + sum_five_array.sum





=> nil
   sum_array
=> [3, 6, 9, 12]
   

```
```ruby
m_three = 3
m_five = 5

sum_three_array = []
sum_five_array = []

  if entered_number % 3 == 0

    loop do
      sum_three_array <<  m_three
      break if m_three == entered_number
      m_three += 3
    end

  else 
    SUBPROCESS for 8,10,11
  end



if entered_number % 5 == 0

  loop do
    sum_five_array <<  m_five
    break if m_five == entered_number
    m_five += 5
  end

  else 
    SUBPROCESS for 9,11,12,13,14
  end

end

puts sum_three_array.sum + sum_five_array.sum


```


SUBPROCESS for 8,10,11


if the entered number % 3 ==  0  - done

if the entered number % 3 != 0




11

2 less than 12
1 more than 10

3,6,9
5,10 


11 is 2 greater than 9

11 is 1 less than 12

break if m3 9 + 1 is >= entered number
break if 9  == 9
break if 12 or above


break if multiple3 is greater than 2 + entered number 
break the loop if the multiple 3 is greater than 1 - entered number 
or
break the loop if the multiple 3 is greater than 1 + entered number 

break if m3 +1 = entered_number
break if m3 + 2 = entered_number

loop do

```ruby
entered_number = 11
m_three = 3
m_five = 5

sum_three_array = []
sum_five_array = []

loop do
  sum_three_array <<  m_three
  break if  m_three +1 == entered_number || m_three + 2 == entered_number
  m_three += 3
end

```
```ruby
m_three = 3
m_five = 5

sum_three_array = []
sum_five_array = []

  if entered_number % 3 == 0
    loop do
      sum_three_array <<  m_three
      break if m_three == entered_number
      m_three += 3
    end

  else 
   loop do
      sum_three_array <<  m_three
      break if  m_three +1 == entered_number || m_three + 2 == entered_number
      m_three += 3
    end
  end



if entered_number % 5 == 0

  loop do
    sum_five_array <<  m_five
    break if m_five == entered_number
    m_five += 5
  end

  else 
   loop do
      sum_three_array <<  m_three
      break if  m_three +1 == entered_number || m_three + 2 == entered_number
      m_three += 3
    end
  end

end

puts sum_three_array.sum + sum_five_array.sum




entered_number = 16
sum_five_array = []
main_counter = 0
m_five = 5


loop do
    sum_five_array <<  m_five # [5]
    main_counter += 1 # [1]
    break if entered_number / main_counter == 5  # 16 / 1 = 16
                                                 # 16 / 2 = 8
                                                 # 16 / 3 = 5
    m_five += 5 # 10
  end

sum_five_array

sum_five_array.sum





if entered number is less than 5 
  sum_five_array = 0










entered_number = 
m_three = 3
m_five = 5

sum_three_array = []
sum_five_array = []

main_counter = 0

if entered_number % 3 == 0

  loop do
    sum_three_array <<  m_three
    break if m_three == entered_number
    m_three += 3
  end

else

  loop do
      sum_three_array <<  m_three # [3]
      main_counter += 1 # [1]
    if entered_number / main_counter == 3
      break
    elsif m_three > entered_number - 3
      break
    else
                                                 # 16 / 2 = 8
                                                 # 16 / 3 = 5
                                                 # 16 / 4 = 4
                                                 # 16 / 5 = 3
    m_three += 3 
  end

end

main_counter = 0

if entered_number % 5 == 0

  loop do
    sum_five_array <<  m_five
    break if m_five == entered_number
    m_five += 5
  end

  else

    loop do
      sum_five_array <<  m_five # [5]
      main_counter += 1 # [1]
    break if entered_number / main_counter == 5 && m_five > entered_number - 5 # 16 / 1 = 16
                                                 # 16 / 2 = 8
                                                 # 16 / 3 = 5
    m_five += 5 # 10
  end
end

puts sum_three_array.sum + sum_five_array.sum


this works:

entered_number = 20
=> 20
   collection = []
=> []
   m5 = 5
=> 5
   loop do
     collection << m5
     m5 += 5
     if m5 == entered_number
       break
     elsif  
       m5 + 5 > entered_number
       break
     end  
   end  
=> nil
   collection
=> [5, 10, 15]
   


entered_number = 21
   collection = []
   m5 = 5
   loop do
     collection << m5
     m5 += 5
     if m5 == entered_number
       break
     elsif  
       m5 + 5 > entered_number
       break
     end  
   end  

   collection









entered_number = 21

five_collection = []

   m5 = 5
   loop do   
     five_collection << m5     # [5]
     m5 += 5                    # 10  
     if m5 == entered_number     # no
       break       
     elsif         
       m5  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       


three_collection = []   
   m3 = 3   
   loop do   
     three_collection << m3     # [5]
     m3 += 3                    # 10  
     if m3 == entered_number     # no
       break       
     elsif         
       m3  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       

three_collection.sum + five_collection.sum




*******

entered_number = 10

five_collection = []

   m5 = 5
   loop do   
     five_collection << m5     # [5]
     m5 += 5                    # 10  
     if m5 == entered_number     # no
       break       
     elsif         
       m5  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       


three_collection = []   
   m3 = 3   
   loop do   
     three_collection << m3     # [5]
     m3 += 3                    # 10  
     if m3 == entered_number     # no
       break       
     elsif         
       m3  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       

three_collection.sum + five_collection.sum


*********







entered_number = 1000

five_collection = []

   m5 = 5
   loop do   
     five_collection << m5     # [5]
     m5 += 5                    # 10  
     if m5 == entered_number + 5    # no
       break       
     elsif         
       m5  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       


three_collection = []   
   m3 = 3   
   loop do   
     three_collection << m3     # [5]
     m3 += 3                    # 10  
     if m3 == entered_number + 3     # no
       break       
     elsif         
       m3  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       

three_collection.sum + five_collection.sum


three_collection = []   
   m3 = 3   
   loop do   
     three_collection << m3     # [5]
     m3 += 3                    # 10  
     if m3  > entered_number     # 10 +5 = 15  
       break       
     end         
   end       


```

Write a method that SEARCHES for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.




Get a number

Search for a multiple of 3
  + divide 
Search for a multiple of 5





number = 10
10 
15/3 =>  5

3
3+3
3+3+3
3+3+3+3
3+3+3+3+3

find out how many multiples of 3 there are in 20
  20 divided by 3
    5

start with 3
  add 3 to 3 once
    add 3 to that number 
    add 3 to that number

loop through the number of multiples of 3 in 20 and add 3 each time
```ruby










20 divided by 3 = 6
20 divided by 5 = 4

number_of_multiples_of_3 = entered_number / 3
  20 / 3 => 6



number_of_multiples_of_3 = entered_number / 3

starting_multiple = 3
multiple_3_collection = [3]


loop do
  number_of_multiples_of_3 -= 1 # 6,5,4,3,2,1
  starting_multiple += 3 # 6,9,12,15,18
  multiple_3_collection << starting_multiple
  break if number_of_multiples_of_3 == 1
end

multiple_3_collection




number_of_multiples_of_5 = entered_number / 
  20 / 5 => 4




number_of_multiples_of_5 = entered_number / 5


starting_multiple5 = 5
multiple_5_collection = [5]


loop do
  number_of_multiples_of_5 -= 1 # 4,3,2,1
  starting_multiple5 += 5 # 10,15,
  multiple_5_collection << starting_multiple5
  break if number_of_multiples_of_5 == 1
end

multiple_5_collection


multiple_3_collection.concat(multiple_5_collection).uniq.sum
















find out how many multiples of 5 there are

put them in an array
add them together







number_of_multiples_of_3 = entered_number / 3

starting_multiple = 3
multiple_3_collection = [3]


loop do
  number_of_multiples_of_3 -= 1 # 6,5,4,3,2,1
  starting_multiple += 3 # 6,9,12,15,18
  multiple_3_collection << starting_multiple
  break if number_of_multiples_of_3 == 1
end


number_of_multiples_of_5 = entered_number / 5


starting_multiple5 = 5
multiple_5_collection = [5]


loop do
  number_of_multiples_of_5 -= 1 # 4,3,2,1
  starting_multiple5 += 5 # 10,15,
  multiple_5_collection << starting_multiple5
  break if number_of_multiples_of_5 == 1
end



multiple_3_collection.concat(multiple_5_collection).uniq.sum










puts "Enter a number greater than 1"
number = gets.chomp.to_i


def multiple_calculator (entered_number)

  number_of_multiples_of_3 = entered_number / 3
 #number_of_multiples_of_3 = 6

  starting_multiple = 0

  multiple_3_collection = []

  loop do
    break if number_of_multiples_of_3 <= 0
    number_of_multiples_of_3 -= 1 # 6,5,4,3,2,1
    starting_multiple += 3 # 6,9,12,15,18
    multiple_3_collection << starting_multiple
    #break if number_of_multiples_of_3 <= 0
  end

  number_of_multiples_of_5 = entered_number / 5
#number_of_multiples_of_5 = 4

  starting_multiple5 = 0
  multiple_5_collection = []

  loop do
    break if number_of_multiples_of_5 <= 0
    number_of_multiples_of_5 -= 1 # 4,3,2,1
    starting_multiple5 += 5 # 10,15,
    multiple_5_collection << starting_multiple5
    #break if number_of_multiples_of_5 <= 0
  end

  multiple_3_collection.concat(multiple_5_collection).uniq.sum

end







if entered_number


puts "Enter a number greater than 1"
number = gets.chomp.to_i


def multiple_calculator (entered_number)

  number_of_multiples_of_3 = entered_number / 3
 

  starting_multiple = 0

  multiple_3_collection = []

  loop do
    number_of_multiples_of_3 -= 1 # 6,5,4,3,2,1
    starting_multiple += 3 # 6,9,12,15,18
    multiple_3_collection << starting_multiple
    break if number_of_multiples_of_3 == 0
  end

  number_of_multiples_of_5 = entered_number / 5

  starting_multiple5 = 0
  multiple_5_collection = []

  loop do
    number_of_multiples_of_5 -= 1 # 4,3,2,1
    starting_multiple5 += 5 # 10,15,
    multiple_5_collection << starting_multiple5
    break if number_of_multiples_of_5 == 0
  end

  multiple_3_collection.concat(multiple_5_collection).uniq.sum

end



 1 and 2

 3

 1 2 3 4 

 5

if < 3

if == 3

if < 5

if == 5














puts "Enter a number greater than 1"
number = gets.chomp.to_i

def multiple_3_calculator(entered_number)
  number_of_multiples_of3 = entered_number / 3

  starting_multiple = 0

  multiple_3_collection = []

  loop do
    break if number_of_multiples_of3 <= 0
    number_of_multiples_of3 -= 1
    starting_multiple += 3
    multiple_3_collection << starting_multiple
  end

  multiple_3_collection

end



def multiple_5_calculator(entered_number)

  number_of_multiples_of5 = entered_number / 5

  starting_multiple5 = 0
  multiple_5_collection = []

  loop do
    break if number_of_multiples_of5 <= 0
    number_of_multiples_of5 -= 1
    starting_multiple5 += 5
    multiple_5_collection << starting_multiple5
  end

  multiple_5_collection

end


puts multiple_3_calculator(number).concat(multiple_5_calculator (number)).uniq.sum






```


ls

```ruby
def multiple?(x, divisor)
  x % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end


multisum(10) == 33




























