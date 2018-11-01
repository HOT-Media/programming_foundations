text = File.read('text_for_medium_2_exercise1.txt')
strarr = text.split(/[!?.](?=\s+\p{Lu})/)
strarr.map! { |element| element.split(' ') }
largest_sentence = strarr.sort_by(&:length).last.join(' ')
puts
puts "The longest sentence is : #{largest_sentence}"
puts "This sentence contains #{largest_sentence.split(' ').length} words."
puts
