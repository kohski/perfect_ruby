def block_sample(name,&block)
  puts "Mr.#{name}"
  puts "stand up"
  block.call if block
  puts "sit down"
end

block_sample("Timtim") do
  puts 'walk'
end
# >> Mr.Timtim
# >> stand up
# >> walk
# >> sit down