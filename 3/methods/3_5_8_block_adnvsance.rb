def block_sample
  puts 'stand up'
  yield if block_given?
  puts 'sit down'
end

block_sample

# >> stand up
# >> sit down