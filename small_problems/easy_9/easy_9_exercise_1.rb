def greetings(arr_str, details)
  puts <<~HELLOSTR
  "Hello, #{arr_str.join(' ')}! It is awesome
  to have a #{details.fetch(:title)} #{details.fetch(:occupation)} around."
  HELLOSTR
end

greetings([
            'Jeremy', 'R', 'Mariani'
          ],
          {
            title: 'Senior', occupation: 'Software engineer'
          })
