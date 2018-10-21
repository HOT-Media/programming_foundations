Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:
```ruby
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

score1 + score2 + score3
divided by 3

95 + 90 + 93 / 3
=> 216
95 + 90 + 93
=> 278
95 + 90 + 93 \3 
SyntaxError: unexpected $undefined, expecting end-of-input
95 + 90 + 93 \3 
             ^
(95 + 90 + 93) / 3
=> 92






(score1 + score2 + score3) / 3


score1 = 95
=> 95
score2 = 90
=> 90
score3 = 93
=> 93
(score1 + score2 + score3) / 3
=> 92
average_score = (score1 + score2 + score3) / 3



90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'

case average_score
when 90...100 then "A"
when 80..89 then "B"
when 70..79 then "C"
when 60..69 then 'D'
when < 60 'F'
end



90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'





def get_grade(score1, score2, score3)

average_score = (score1 + score2 + score3) / 3

  case average_score
    when 90...100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then 'D'
    when 0..60  then 'F'
  end

end






*************************************************JMX

def get_grade(score1, score2, score3)
average_score = (score1 + score2 + score3) / 3

  case average_score
    when 90...100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then 'D'
    when 0..60  then 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"





















