
puts "Enter a number greater than 1"
entered_number = gets.chomp.to_i

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

puts three_collection.sum + five_collection.sum





def multiple?(number, divisor)
  number % divisor == 0
end






def multisum(max_value) #15
  sum = 0
         #   15
  1.upto(max_value) do |number|


    if multiple?(number, 3) || multiple?(number, 5)

      sum += number
    end
  end
  sum
end
