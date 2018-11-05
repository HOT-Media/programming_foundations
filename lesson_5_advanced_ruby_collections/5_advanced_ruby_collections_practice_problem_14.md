Given this data structure

write some code to 

return an array 

containing 

the colors of the fruits 
the colors should be capitalized

and 

the sizes of the vegetables. 
The sizes should be uppercase


The sizes should be uppercase and the colors should be capitalized.


```ruby
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]


is the object a fruit
  yes
    what colors

  no, not fruit
  what size

iterate through the hash
collector = []

hsh.each_with_object([]) do |key, value,| value, item
 'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'}

  key[:type] == 'fruit'
  collector << key[:colors]



x = {'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'}}
=> {"grape"=>{:type=>"fruit", :colors=>["red", "green"], :size=>"small"}}
x['grape]
'
]  
=> nil
x['grape']
=> {:type=>"fruit", :colors=>["red", "green"], :size=>"small"}
x['grape'][:type]
=> "fruit"
x['grape'][:colors]
=> ["red", "green"]
x['grape'][:colors].each{|word| word.capitalize!}
=> ["Red", "Green"]


return an array 

containing 

the colors of the fruits 
the colors should be capitalized

and 

the sizes of the vegetables. 
The sizes should be uppercase


The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]



x = {'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'}}


if :type == fruit then 

x['grape'][:type]
=> "fruit"

x['grape'][:colors].each(&:capitalize!)

x['grape'][:colors].each(&:capitalize!)
=> ["Red", "Green"]


if :type == vegetable then

x['carrot'][:size].upcase!
=> "MEDIUM"


hsh.map do |key,value|  what to return
  key                            value
{'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'}}

[key]                            value
['grape']     {type: 'fruit', colors: ['red', 'green'], size: 'small'} 

        if   value[:type] == 'fruit'
          value[:colors].each(&:capitalize!)
               ['red', 'green']

             else value[:size].upcase
             end




*************************************************JMX


hsh.map do |key,value|
  if value[:type] == 'fruit'
     value[:colors].each(&:capitalize!)
               # ['red', 'green']
  else value[:size].upcase
  end
end








