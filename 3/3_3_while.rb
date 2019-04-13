languages = %w!perl python ruby!
i = 0

while i < languages.length
  puts "hello, #{languages[i]}"
  i += 1
end

i = languages.length - 1 
until i < 0
  puts "good evening, #{languages[i]}"
  i -= 1
end

# >> hello, perl
# >> hello, python
# >> hello, ruby
# >> good evening, ruby
# >> good evening, python
# >> good evening, perl