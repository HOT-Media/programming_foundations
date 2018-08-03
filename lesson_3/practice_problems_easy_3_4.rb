
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element # << means that the new element is permanently added
                        # to the buffer array argument and permanently changes
                        # it by updating the array argument passed in to the 
                        # buffer parameter and when buffer is returned the
                        # value is the array passed in to the buffer parameter
                        # which now includes the new element., and does not
                        # return a new array
  buffer.shift if buffer.size > max_buffer_size
  buffer
end


def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element] # + means that the array passed into
                                       # the input array parameter is not 
                                       # permanenetly changed because the
                                       # value passed into the parameter
                                       # new element is not permently
                                       # added to the existing array passed
                                       # in so the output is the same
                                       # but the input value is not 
                                       # modified
  returns a new array
  buffer.shift if buffer.size > max_buffer_size
  buffer
end


x = [1,2,3]
=> [1, 2, 3]
   y = [1,2,3]
=> [1, 2, 3]
   rolling_buffer1 x , 20, 7
=> [1, 2, 3, 7]
   rolling_buffer2 y , 20, 7
=> [1, 2, 3, 7]
   x
=> [1, 2, 3, 7]
   y
=> [1, 2, 3]
