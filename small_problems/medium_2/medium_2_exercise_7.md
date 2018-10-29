Write a method that returns the number of Friday the 13ths in the year given by an argument.

You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Examples:
```ruby
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

Do not try to rewrite the calendar and the logic behind it

research google for the pattern

code the pattern

  how to determine the occurrences of friday the 13ths in a given year
  starting with 1752?

  Friday the 13th Patterns Repeat in the Calendar. 

  There is a calendrical method to the madness of Friday the 13th. 

  Whenever a common year begins on a Thursday, 

  the months of February, March, and November will have a Friday the 13th. This will happen 11 times in the 21st century.

A common year is a standard Gregorian calendar year with 365 days divided into 12 months, and only 28 days in February.

  
there is a calendrical method to the madness of Friday the 13th. Whenever a common year begins on a Thursday, the months of February, March, and November will have a Friday the 13th. This will happen 11 times in the 21st century.

The February-March-November pattern repeats in a 28-year cycle. In the 21st century, the cycle began in 2009. In 2015, 6 years later, Friday the 13th occurred in February, March, and November. This won't happen for 11 more years until 2026 and we'll have to wait again for 11 years until 2037 to see the February, March, and November trilogy.

This pattern will repeat itself starting 2043, 6 years after 2037.

There can be as many as three Friday the 13ths in a single calendar year; either in February, March and November in a common year starting on Thursday (such as 2009, 2015 or 2026) (D), or January, April and July in a leap year starting on Sunday (such as 2012) (AG).

Three Friday the 13ths can occur in a leap year as well. If January 1 of a leap year falls on a Sunday, the months of January, April, and July will each have a Friday the 13th.

 how many friday the 13ths were in 1752
 calculate 1 cycle of friday the 13ths to make sure the logic works out before going any further

 break this down into one sentence steps before typing one character of code

The maximum number of Friday the 13ths in a year is three, and the minimum is one, as Cameron Eggins explains. Here’s a way to think about it: If two given months start on the same day of the week, then the day of the week for the 13th of both months will also be concordant. So all we need to do is figure out which months will start from the same days of the week, for both nonleap and leap years.


A monthly puzzle celebrating the sudden insights and unexpected twists of scientific problem solving. Your guide is Pradeep Mutalik, a medical research scientist at the Yale Center for Medical Informatics and a lifelong puzzle enthusiast.
See all Puzzles
Let’s map the days of the week to the numbers 0 through 6, and assign the base number 0 for January. We can now find the offsets to this base number for each subsequent month by casting out complete weeks. Basically, we perform modulo arithmetic: Take the number of days in the month, divide by 7 and add the remainder to the previous month’s number, and reduce the sum to a number below 7, if necessary, to get the number for the next month. January has 31 days, which is four complete weeks plus three days, so February’s base number is 0 + 3, which is 3. Continuing this way, we obtain the numbers 0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5, which give the offsets for the 12 months in a nonleap year. The number 3 occurs three times, for February, March and November, and this is the maximum number of occurrences of all the numbers. If any one of these three months has a Friday the 13th, so will the other two months. Hence three is the maximum number of Friday the 13ths that it is possible to have in a nonleap year. Now notice that each of the seven numbers occurs at least once, which means that all starting days of the week are represented, so you cannot avoid having at least one Friday the 13th in a nonleap year. Doing the same procedure for leap years does not change our maximum and minimum, which remain 3 and 1 respectively.

Incidentally, if you memorize this string of numbers that represent the months — 0 3 3 6 1 4 6 2 5 0 3 5 — you can figure out the day of the week for any date using simple addition and casting out 7s. Let’s take Oct. 13, 2017. Map the weekdays to the digits 0 through 6 such that 0 = Sunday and 6 = Saturday. Add the number of years since 2001 to the number of leap years since 2001: 16 + 4 = 20 = 6 (mod 7). Now add the date and the offset number for the month, giving 6 + 13 + 0 = 19 = 5, which is a Friday. You can do it pretty quickly in your head with some practice. For dates in the 1900s use the number of years plus number of leap years since 1900.

Question 2:
Suppose that instead of being spooked by Friday the 13th, you consider it to be your lucky day, and you want to maximize the number of Friday the 13th’s in a year. You are allowed to tamper with the monthly distribution of days in a normal nonleap year in the following way: You can take away one day from any month of the year and add it to any other. For instance, you could, like Robin Hood, rob the day-rich December of one day, reducing it to 30 days, and bump up February’s quota to 29 days. Or you could, like a kleptocrat, decree that January has 32 days while poor February has just 27. What’s the maximum number of Friday the 13th’s you could create in this way in a single year? What if you could do the above procedure for two pairs of months, without using any month twice?

The answers to the two questions are 4 and 5.

You can solve this by inspecting the string of numbers we obtained above: 0 3 3 6 1 4 6 2 5 0 3 5. There are already three 3s, so it is simplest to try to maximize them. Notice that there is a 4 and a 2, and we can convert both to 3s by performing the day-borrowing procedure described on adjacent months. By taking a day from May and giving it to June, we can surgically alter the 4 to a 3, thus adding a fourth 3 and potentially creating a fourth Friday the 13th. Similarly, by borrowing a day from August and giving it to July, we can change the 2 to a fifth 3, without changing any of the other offsets. So our string of offsets is now 0 3 3 6 1 3 6 3 6 0 3 5, which includes five 3s. This means that if February has a Friday the 13th, so will March, June, August and November. Lucky you!

Pete Winkler pointed out that the 13th is in fact more likely to be a Friday than any other day of the week, something, he said, that was proved by a 13-year-old! Just knowing this fact, it is possible to conclude that there is an integral number of weeks in a time period of 400 years. Do you see how?










  is it a leap year?
  if leap year, 

 the number of occurrences are always 1, 2 or 3

 does the year have more than one

 what are ALL the criteria for two occurrences

 what are all the criteria for three occurrences
  Whenever a common year begins on a Thursday, the months of February, March, and November will have a Friday the 13th.
  Three Friday the 13ths can occur in a leap year as well. If January 1 of a leap year falls on a Sunday, the months of January, April, and July will each have a Friday the 13th.
































