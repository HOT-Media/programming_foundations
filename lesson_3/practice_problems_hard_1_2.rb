

greetings = { a: 'hi' }
informal_greeting = greetings[:a] # 'hi'
informal_greeting << ' there' # << modifies the object calling it which is
                              # the value in the kv pair :a 'hi' which becomes
                              # :a 'hi there'

puts informal_greeting  #  => "hi there"

puts greetings