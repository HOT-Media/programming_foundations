advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice(house, dinosaur, exclude_end=false) 

advice.slice!("Few things in life are as important as ")   #=> "sa st"


   advice.slice!("Few things in life are as important as ")
=> "Few things in life are as important as "
   advice
=> "house training your pet dinosaur."


             from index 0 to advice.index(house) first character location, which is 39
advice.slice!(0, advice.index('house'))