Given this code, what would be the final values of a and b? 
```ruby


a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 
arr[1][0] -= a









a = 2
b = [5, 8]
arr = [a, b]

arr
=> [2,[5,8]]


arr[0] += 2 
arr[1][0] -= a

arr[0] += 2
   [2,             [5,8]]
   [4,             [5,8]]



arr                [1][0] -= a
   [4,               [ 5,   8    ]]
   [4,               [ (5 - 2),   8    ]]
                          3

x = 2
x += 1
x = 3

x = 2
x = 3


a is 4 because a = a + 2
because a is being reassigned to 4

b = [3,8]


final values of a and b





a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 
arr[1][0] -= a



arr = [a, b]
arr
=> [2,[5,8]]

*************************************************JMX
# assign a new value to arr[0],
# arr[0] is 2
# arr[0] = the value of the integer in index arr[0],2 + 2 which is 4
# a is never modified
arr[0] += 2 

arr
=> [2,[5,8]]


# arr[1] is referencing the Array b, [5,8] index 0 which is 5, 
# -= a is 5 - 2 = 3
arr[1][0] -= a 

b = [3, 8]

















