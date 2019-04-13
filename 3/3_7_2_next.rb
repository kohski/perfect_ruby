languages = %w(perl python Ruby smalltalk javascript) # => ["perl", "python", "Ruby", "smalltalk", "javascript"]

ans = languages.each do |language|
  puts language

  next unless language == "Ruby"

  puts "I found Ruby!"
end
ans # => ["perl", "python", "Ruby", "smalltalk", "javascript"]

# >> perl
# >> python
# >> Ruby
# >> I found Ruby!
# >> smalltalk
# >> javascript