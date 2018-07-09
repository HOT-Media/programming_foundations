def reverse_words(string)
  sentence_array = string.split.map do |idx|
    if idx.length > 5
      idx.reverse
    else
      idx
    end
  end
  sentence_array.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
