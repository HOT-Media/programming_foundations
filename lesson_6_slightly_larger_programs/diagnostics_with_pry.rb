require 'pry'
require 'pry-byebug'

longest = %w{ cat sheep bear }.inject("reallylongword") do |memo, word|
  binding.pry 
      memo.length > word.length ? memo : word
   end
