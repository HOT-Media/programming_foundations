nown = ["Chicago", "Munchen", "Michael Dell", "Erwin Schrödinger"].sample 

adjective = ["hot", "cold", "red", "shiny", "smart"].sample

verb = ["wrote", "ran", "slept", "talked"].sample

adverb = ["abruptly", "boldly", "carefully", "deliberately"].sample 

text = File.read('advanced_1_exercise1_text_file.txt')

sentences = text.split(/\.|\?|!/)
puts "#{sentences}"
#puts "The #{adjective} #{nown} #{adverb} #{verb}."
