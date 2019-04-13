languages = %w(perl python Ruby smalltalk javascript) # => ["perl", "python", "Ruby", "smalltalk", "javascript"]

ans = languages.each do |language|
  puts language

  if language == "Ruby"
    puts "I found Ruby!!"
    redo
  end
end

#infinity

