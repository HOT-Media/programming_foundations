require 'pry'
require 'pry-byebug'


def begin_game?
    puts "Are you ready to begin the game?, yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || "y"
      return true
      break
    elsif answer == "no" || "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
  end
end



def exit_game?
  puts "Exit game?, yes or no "
  answer = gets.chomp.downcase
  loop do 
    if answer == "yes" || "y"
      binding.pry
      return true
      break
    elsif answer == "no" || "n"
      return false
      break
    else puts "Valid answers are yes or no"
    end
  end
end

loop do
if begin_game? == false
  exit_game?
end

binding.pry
puts "didnt exit game"
end



























