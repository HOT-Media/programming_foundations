answer = 42
                    # 42
def mess_with_it(some_number)
  some_number = some_number + 8 # 50
end
# => 50

mess_with_it(answer)
#=> 50

new_answer = mess_with_it(answer)
new_answer
#=> 50



p answer - 8 # the method does not mutate the variable answer
# => 34