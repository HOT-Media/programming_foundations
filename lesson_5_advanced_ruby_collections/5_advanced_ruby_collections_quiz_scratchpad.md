2
In the following array, a, b, c and d are variables representing objects to be sorted:
```ruby
[a, b, c, d]

Given the following return values when we compare these variables:

a <=> b # => -1  a is less than b
c <=> b # => 0   c  ==  b
d <=> c # => 1   d is greater than c


In what order would we expect the items in the array to be if we called sort on the array? (Assume that the objects in question are defined in such a way that they have a set, linear order).

Your Answer
[d, a, c, b]
 [d, c, b, a]
 [a, b, c, d]
 [d, b, c, a]



a = 5
b = 10
c = 10
d = 15

a <=> b ==  -1 
c <=> b == 0
d <=> c == 1

a = 'one'
=> "one"
b = 'onee'
=> "onee"
c = 'onee'
=> "onee"
d = 'oneee'
=> "oneee"
a <=> b
=> -1
b <=> c
=> 0
c <=> d
=> -1
d  <=> c
=> 1
a.object_id
=> 70125420697680
b.object_id
=> 70125433239740
c.object_id
=> 70125427063800
d.object_id
=> 70125433190300
arr
=> [1, 10, 10, 20]
arr = [a,b,c,d]
=> ["one", "onee", "onee", "oneee"]
arr[1].object_id
=> 70125433239740
arr[2].object_id
=> 70125427063800
arr
=> ["one", "onee", "onee", "oneee"]
arr.sort
=> ["one", "onee", "onee", "oneee"]
arr = [a,b,c,d].sort
=> ["one", "onee", "onee", "oneee"]
arr = [a,b,c,d].sort!
=> ["one", "onee", "onee", "oneee"]
arr[1].object_id
=> 70125433239740
arr[2].object_id
=> 70125427063800

*************************************************JMX


3
Given the code below, select all the valid ways to return the value for the hash key :three.

arr = [ 
       {one: '1', two: 2},

       [
         {four: 5, three: 6}, 

         :three
       ],
         :three, 

         {2=>:two, 3=>:three}
      ]


Your Answer
arr[1][0][:three]
 arr[1][1]
 arr[2]
 arr[3][3]



arr = [
  {one: '1', two: 2},
     sub array containing a hash and a floating :three symbol
  [{four: 5, three: 6}, :three],
  floating :three symbol
  :three,
  hash
  {2=>:two, 3=>:three}
]
 
             0                            1                   2             3
                                      0               1               
arr = [ {one: '1', two: 2}, [ {four: 5, three: 6}, :three], :three, {2=>:two, 3=>:three} ]






Given the code below, select all the valid ways to return the value for the hash key :three.


arr[1][0][:three] *
 arr[1][1]
 arr[2]
 arr[3][3]


=> [{:one=>"1", :two=>2},
 [{:four=>5, :three=>6}, :three],
 :three,
 {2=>:two, 3=>:three}]
arr[1][0][:three]
=> 6
arr[1][1]
=> :three
arr[2]
=> :three
arr[3][3]
=> :three

*************************************************JMX
4)

todo_lists = [
  { id: 1, list_name: 'Groceries', 
    todos: [
            { id: 1, name: 'Bread', completed: false },
            { id: 2, name: 'Milk', completed: false },
            { id: 3, name: 'Apple Juice', completed: false }
    ]
  }
]


Given the following nested data structure, and without running the code, select the correct option to change the string 'Apple Juice' to 'Orange Juice'


todo_lists[0][:todos][2][:name] = "Orange Juice"









todo_lists[0][:todos][2][:name] = 'Orange juice'

todo_lists[0][:todos][2] = 'Orange Juice'
 todo_lists[1][:todos][3][:name] = 'Orange Juice'
 todo_lists[0][:todos][2][:name] = 'Orange Juice' *
 todo_lists[:todos][2][:name] = 'Orange Juice'
 

todo_lists[0][:todos][2][:name] = "Orange Juice"



*************************************************JMX
5)


todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]


Given the following nested data structure, and without running the code, 

select all the options that would set the value for :completed to true for all of the todos in the 'Homework' list.


todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },

    todo_lists[0]
  {id: 2, list_name: 'Homework',  

    todos: [
                            todos:[0][:completed] = true
            { id: 1, name: 'Math', completed: false },
            { id: 2, name: 'English', completed: false }
           ]
  }
]



[
  {:id=>1,
  :list_name=>"Groceries",
  :todos=>
   [{:id=>1, :name=>"Bread", :completed=>false},
    {:id=>2, :name=>"Milk", :completed=>false},
    {:id=>3, :name=>"Apple Juice", :completed=>false}]},
 


    {
     :id=>2,:list_name=>"Homework",
     :todos=> 
     [
      {:id=>1, :name=>"Math", :completed=>false},
      {:id=>2, :name=>"English", :completed=>false}]
    }
     ]








todo_lists[1][:todos].each do |hsh|      * 
  hsh[:completed] = true
end  




todo_lists[1].each do |list_key, list_value|   * 
  if list_key == :todos
    list_value.each { |todo| todo[:completed] = true }
  end
end

 todo_lists[1][:todos][0][:completed] = false * 
todo_lists[1][:todos][1][:completed] = false  *


 todo_lists.each do |list|                *
  if list[:list_name] == 'Homework'
    list[:todos].each do |todo|
      todo[:completed] = false
    end
  end
end


 todo_lists[1][:todos].each do |todo|     *
  todo[:completed] = false
end


*************************************************JMX
6)

a = 'hi'
=> "hi"

english_greetings = ['hello', a, 'good morning']
=> ["hello", "hi", "good morning"]


greetings_hash = {
              french: ['bonjour', 'salut', 'allo'],
              english: english_greetings,                   =>["hello", "hi", "good morning"]
              italian: ['buongiorno', 'buonasera', 'ciao']
            }


greetings[:english][1] = 'hey'
                             "hey"
                   ["hello", "hi", "good morning"]
=> ["hello", "hi", "good morning"]


                            key     value
greetings_hash.each do |language, greeting_list|
        value
  ["hello", "hey", "good morning"]
  greeting_list.                 each { |greeting| greeting.upcase! }
end

            a.upcase!
["HELLO", , "GOOD MORNING"]

puts a => "HI"
puts english_greetings[1] => "HI"



greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]





puts a                      # => 'hi'
puts english_greetings[1]   # => 'hey'
puts greetings[:english][1] # => 'HEY'


puts a                      # => 'HEY'
puts english_greetings[1]   # => 'HEY'
puts greetings[:english][1] # => 'HEY'

puts a                      # => 'hey'
puts english_greetings[1]   # => 'hey'
puts greetings[:english][1] # => 'HEY'

puts a                       => 'hi'   *
puts english_greetings[1]    => 'HEY'  *
puts greetings[:english][1]  => 'HEY'  *




a = 'hi'
english_greetings = ['hello', a, 'good morning']
=> ['hello', 'hi', 'good morning']

greetings_hash = {
                  french: ['bonjour', 'salut', 'allo'],
                  english: english_greetings, # => ['hello', 'hi', 'good morning']
                  italian: ['buongiorno', 'buonasera', 'ciao']
                 }

greetings_hash[:english][1] = 'hey' # => ['hello', 'hey', 'good morning']



greetings_hash.each do |language, greeting_list|
     lang      greeting list           greeting_list
  english: english_greetings => ['hello', 'hey', 'good morning']

  ['hello', 'hey', 'good morning']
  greeting_list                   .each { |greeting| greeting.upcase! }
end



puts a                       => 'hi'   *
puts english_greetings[1]    => 'HEY'  *
puts greetings[:english][1]  => 'HEY'  *





puts a                    # => "hi"
puts english_greetings[1] # => "HEY"
puts greetings_hash[:english][1] # => "HEY"


*************************************************JMX
7)

[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
   ['a', 'b'] 
  sub_arr    .map do |letter|
    letter.upcase
  end
  => ["A", "B"]
end
etc 

Without running the code, identify the matching description.


[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end




The return value of the String#upcase method is returned by the inner block to the inner call to Array#map; this in turn returns each uppercased string to the outer block, which returns it to the outer call to Array#map. This outer call to map creates a new flat array, populated by uppercased versions of each string.

The return value of the String#upcase method is returned by the inner block to the inner call to Array#map. Array#map ignores the return value of the block and simply returns the calling object (i.e. the inner array that was passed to it for that iteration). This inner array is passed by the outer block to the outer call to Array#map, which in turn ignores the return value and returns the calling object (i.e. the original nested array).


***
The return value of the String#upcase method is returned by the inner block to the inner call to Array#map; this adds the uppercase string to a new array in place of the lowercase version. This new array is returned by the outer block to the outer call to Array#map. This call to map also creates a new array, populated by the new inner arrays (containing the uppercase strings), which it then returns.

Within the inner block, the String#upcase method is called on each element of the inner array for that iteration. Since the String#upcase method is non-destructive, the inner call to Array#map simply returns the same sub-array that was passed to it by the outer block; this in turn is passed to the outer Array#map call, which returns an unchanged array.

*************************************************JMX

8 - 10
*************************************************JMX

Your team is working on some reporting functionality for the Sales Department. 

Your brief is to produce code that lets the Sales Department report on the value of orders per customer. 

Each order is represented by a hash within an array, but there may be more than one order per customer. 

The Sales Department wants to report two things:

The total value of orders for each customer
The total value of fulfilled orders for each customer

This is an example of the provided data:

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}, #  *
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49}, #  *
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00}, #  *
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},

]
Your team decides to approach the problem in two stages:

Convert the initial data structure to a more usable format
Extract the required information from the restructured data

Note: the objective with this set of questions is to test your ability to read and understand the code. 

Try to answer these questions by examining and mentally parsing what the code is doing rather than simply running the complete code samples.

*************************************************
8)

You agree that the restructured data should look like this:

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]
The team comes up with four possible solutions to convert the initial data to the new structure. Select all the solutions which correctly restructure the data.

return an array with a hash for each customer
                 k         v      k               v           k       v     k            v             k              v     k           v 
order_data = {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

temp cust hash = {}

order_data.map do |hsh|

  hsh.each do |key,value|
put the name and id in a hash on each iteration throug the array from hash :id   :name
then on each iteration create an array to collect filfiled and order value




order_data = [ {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}]

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                    ]
                            }
                  ]     




**********  first  ******* NO

in the following code, :customer_id is used as a key  to identify if the hash includes the customer. The key is irrelevant and 
has nothing to do with the output outside of customer identification



customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id]) # does the hash have the key 12?
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  else # if customer_orders does not have the key  12  customer_orders.has_key?(12)

   # add a key to identify the customer 
   # customer_orders[addkey] = the rest of the hash as the value
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        [
          row[:order_fulfilled],
          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values



row = {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                     ]
                    }
                  ]



customer_orders = {}

order_data.each do |row|
  # if the customer_orders has the key 12 then
  if customer_orders.has_key?(row[:customer_id])

    # access the key 12 and the key :orders inside the 12 value and append an array containing 
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  else                     # key 
                          #   12 =       v   k                  12          k                  v    emma           k           v
    customer_orders[row[:customer_id]] = { customer_id: row[:customer_id],customer_name: row[:customer_name],  orders: [
                                                                                                                        [
                                                                                                                          row[:order_fulfilled] 12, #** No
                                                                                                                                                 #** no 
                                                                                                                          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values


customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        [
          row[:order_fulfilled], ****** no right here, this returns true because row[:order_fulfilled] is accessing the value   true or false
          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values


















***********








order_data = [ {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}]

row => element at index 0 of order_data.each
order_data[0] =>

row=>
{customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                     ]
                    }
                  ]


















**********second                              *** NO

temp_orders = {}

order_data.each do |row|
             [      key        ]   {       new hash starting with k customer_name: "emma", customer_id: 12, orders: [ array ]}
             [  :customer_id   ] = 
  temp_orders[row[:customer_id]] = {customer_name: row[:customer_name],customer_id: row[:customer_id], orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values













row = {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                     ]
                    }
                  ]



temp_orders = {}

order_data.each do |row|
                 key 12
  temp_orders[row[:customer_id]] = 

        custname:   emma , custid: 12  
      {
      customer_name: row[:customer_name],    ****** no right here because name is first 
      customer_id: row[:customer_id],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values











temp_orders = {}

order_data.each do |row|
  temp_orders[row[:customer_id]] = {
      customer_name: row[:customer_name],
      customer_id: row[:customer_id],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values


***********






********** third *** YES


row=>
{customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                     ]
                    }
                  ]



customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values
customer_orders = customer_orders.values

*************





row=>
{customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                     ]
                    }
                  ]

*************fourth NO  **


customer_orders = order_data.map do |row|
  {
    customer_id: row[:customer_id],
    customer_name: row[:customer_name],
    orders: [
      {
        order_fulfilled: row[:order_fulfilled],
        order_value: row[:order_value]
      }
    ]
  }
end



row=>
{customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99}

customer_orders = [        k       v              k             v               k                         v  
                    { customer_id: 12,     customer_name: 'Emma Lopez',      orders: [
                                                                                      { order_fulfilled: true, order_value: 135.99 },
                                                                                      { order_fulfilled: true, order_value: 289.49 },
                                                                                      { order_fulfilled: false, order_value: 58.00 }
                                                                                     ]
                    }
                  ]


customer_orders = order_data.map do |row| **** This makes a new hash for every row with the new structure instead of nesting the orders
  {
    customer_id: row[:customer_id],
    customer_name: row[:customer_name],
    orders: [
      {
        order_fulfilled: row[:order_fulfilled],
        order_value: row[:order_value]
      }
    ]
  }
end




************




























*************************************************
9) none - no args for fulfilled true or false


For the second part of the solution, extracting the data, 

the format that is required in each case is as follows:

all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]







For the unfiltered totals, the team again comes up with four possible solutions. Select all those that correctly implement the requirements.

customer_orders = [
                    {
                      customer_id: 12,
                      customer_name: 'Emma Lopez',
                      orders: [
                        { order_fulfilled: true, order_value: 135.99 },
                        { order_fulfilled: true, order_value: 289.49 },
                        { order_fulfilled: false, order_value: 58.00 }
                      ]
                    },
                    {
                      customer_id: 32,
                      customer_name: 'Michael Richards',
                      orders: [
                        { order_fulfilled: true, order_value: 120.00 },
                        { order_fulfilled: false, order_value: 85.65 }
                      ]
                    },
                  ]




                          new hash from Emma cust id 12 
                          customer_orders[:customer_id].key(12)
all_orders =[
              {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},         # hash for Emma then total order value    
              {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},   # hash for Michael then total order value
            ]

fulfilled_orders =[
                    {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},          # hash for Emma then total of fulfilled orders fulfilled == true
                    {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
                  ]




********first ********************************* NO no code to identify if the order is fulfilled

all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

all_orders
=> [
    {:customer_id=>12, :customer_name=>"Emma Lopez"}, {:customer_id=>32, :customer_name=>"Michael Richards"}
   ]



first iteration
{
                      customer_id: 12,
                      customer_name: 'Emma Lopez',
                  orhsh={orders: [
                        { order_fulfilled: true, order_value: 135.99 },
                        { order_fulfilled: true, order_value: 289.49 },
                        { order_fulfilled: false, order_value: 58.00 }
                      ]
                    }

Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().
customer_orders.each_with_index do |data, index|
                                    index       rv     orders hsh
                             inject(initial) { |memo,      obj|       block } → obj
                      orhsh                      return      
  order_value = data[:orders].reduce (0)   do |total,     order|
      0   +  orders[:order_value]reduce all the order values
          total + order[:order_value]
  end
return sum of order values

order value = integer money sum
               0 then 1
  all_orders[index][:total_order_value] = order_value
end



all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end
                      new kv pair       
  all_orders[index][:total_order_value] = order_value
end

all_orders
=> [                   0
    {:customer_id=>12, :customer_name=>"Emma Lopez"[:total_order_value] = order_value}, {:customer_id=>32, :customer_name=>"Michael Richards"}
   ]




all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]


all_orders
=> [{:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48},
 {:customer_id=>32, :customer_name=>"Michael Richards",:total_order_value=>205.65}]


all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end

  all_orders[index][:total_order_value] = order_value
end





********





******** second

all_orders = customer_orders.map do |customer_data|
  order_value = customer_data[:orders].inject(0) do |total, order_data|
    total + order_data[:order_value]
  end

  {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: order_value
  }
end

********




******** third

all_orders = []

customer_orders.each do |customer_data|
  customer_total_orders = {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: 0
  }

  customer_data[:orders].each do |order|
    customer_total_orders[:total_order_value] += order[:order_value]
  end

  all_orders << customer_total_orders
end


*********




********* fourth

all_orders = []

customer_orders.each do |customer_data|
  cust_arr = [
    [:customer_id, customer_data[:customer_id]],
    [:customer_name, customer_data[:customer_name]],
    [:total_order_value]
  ]

  order_value = 0
  customer_data[:orders].each do |order|
    order_value += order[:order_value]
  end

  cust_arr[2] << order_value

  all_orders << cust_arr
end


***********

















*************************************************
10)

For the filtered totals, one of the team suggests the following solution:



fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end



While reviewing it, you spot a bug. Identify the line causing the bug.




fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if  #order[:order_fulfilled]
    0 + order[:order_value] if  #order[:order_fulfilled]
    0 + order[:order_value] if  order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end

order = {:order_fulfilled=>true, :order_value=>135.99}




fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end








fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|













  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end


# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
longest                 












*************************************************
9)
For the second part of the solution, extracting the data, the format that is required in each case is as follows:


customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
]



For all_orders, the team again comes up with four possible solutions. Select all those that correctly implement the requirements


all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
]


******* 1

all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end

  all_orders[index][:total_order_value] = order_value
end




********2

all_orders = customer_orders.map do |customer_data|
  order_value = customer_data[:orders].inject(0) do |total, order_data|
    total + order_data[:order_value]
  end

  {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: order_value
  }
end




********3
all_orders = []

customer_orders.each do |customer_data|
  customer_total_orders = {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: 0
  }

  customer_data[:orders].each do |order|
    customer_total_orders[:total_order_value] += order[:order_value]
  end

  all_orders << customer_total_orders
end

********4

all_orders = []

customer_orders.each do |customer_data|
  cust_arr = [
    [:customer_id, customer_data[:customer_id]],
    [:customer_name, customer_data[:customer_name]],
    [:total_order_value]
  ]

  order_value = 0
  customer_data[:orders].each do |order|
    order_value += order[:order_value]
  end

  cust_arr[2] << order_value

  all_orders << cust_arr
end






*************************************************
10)
While reviewing it, you spot a bug. Identify the line causing the bug.

fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end

** NIL 
fulfilled_orders
=> [{:customer_id=>12, :customer_name=>"Emma Lopez", :order_value=>nil},
 {:customer_id=>32, :customer_name=>"Michael Richards", :order_value=>nil}]


fulfilled_orders = customer_orders.map do |customer|

order_value = data[:orders].reduce(0) do |total, order|

total + order[:order_value] if order[:order_fulfilled]

fulfilled_orders[index][:order_value] = order_value












