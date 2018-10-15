def swap(str)
  str_arr = str.split.each do |word|
    temp_collection = []

    word.split(//).each do |character|
      temp_collection << character
    end

    word[0] = temp_collection.last
    word[-1] = temp_collection.first
  end

  str_arr.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
