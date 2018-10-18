def staggered_case(str)
  str_array = str.split(//)
  str_array[0].upcase!
  index_counter = 1
  loop do
    if str_array[index_counter].match?(/[^a-zA-Z]/)
      str_array[index_counter]
    elsif index_counter.odd?
      str_array[index_counter].downcase!
    else
      str_array[index_counter].upcase!
    end
    index_counter += 1
    break if index_counter == str_array.length
  end
  str_array.join()
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
