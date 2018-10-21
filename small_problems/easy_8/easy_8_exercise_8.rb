def double_consonants(str)
  doubled_cons_arr = str.chars.map do |idx|
    if idx =~ /[^A-Za-z]/
      idx
    elsif idx =~ /[aeiou]/
      idx
    else
      idx + idx
    end
  end
  doubled_cons_arr.join
end

p double_consonants('String') == "SSttrrinngg"

p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"

p double_consonants("July 4th") == "JJullyy 4tthh"

p double_consonants('') == ""
