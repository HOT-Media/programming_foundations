munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)


munsters = {
   "Herman" => { "age" => 32, "gender" => "male" }}    
=> {"Herman"=>{"age"=>32, "gender"=>"male"}}
   munsters.values
=> [{"age"=>32, "gender"=>"male"}]

 munsters.values.each do |family_member|
     family_member['age'] += 42 # means {"age"=>32, "gender"=>"male"}[age] += 42  
     family_member["gender"] = 'other' # means {"age"=>32, "gender"=>"male"} = 'other'  
   end  
=> [{"age"=>74, "gender"=>"other"}]
   
mess_with_demographics(munsters)
=> [{"age"=>74, "gender"=>"other"},
 {"age"=>72, "gender"=>"other"},
 {"age"=>444, "gender"=>"other"},
 {"age"=>52, "gender"=>"other"},
 {"age"=>65, "gender"=>"other"}]