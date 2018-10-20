def fizzbuzz(starting_num, ending_num)
  integer_arr = Array(starting_num..ending_num)

  int_fzz_bzz = integer_arr.map do |idx|
    if idx % 3 == 0 && idx % 5 == 0
      "Fizz Buzz"
    elsif idx % 5 == 0
      "Buzz"
    elsif idx % 3 == 0
      "Fizz"
    else
      idx
    end
  end
  puts int_fzz_bzz.join(" ,")
end

fizzbuzz(1, 15)
