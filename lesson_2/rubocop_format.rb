=begin
name = "Jeremy1"
valid_name = if /[0-9]/.match(name)
               # <MatchData "0-9">
               false
             end

puts valid_name
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

name = ''
loop do
prompt("Enter your name:")
name = Kernel.gets().chomp()

valid_name = if /[0-9]/.match(name)
               # <MatchData "0-9">
               false
             end

  if name.empty?()
    prompt("Enter a valid name.")
  elsif valid_name == false
    prompt('Only letters are accepted')
  else
    break
  end
end

puts name 