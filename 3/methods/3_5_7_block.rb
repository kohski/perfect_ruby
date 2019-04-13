def block_sample
  puts 'stand up'
  yield
  puts 'sit down'
end

block_sample do
  puts 'walk'
end
# >> stand up
# >> walk
# >> sit down


block_sample
# >> stand up
# ~> -:3:in `block_sample': no block given (yield) (LocalJumpError)
# ~> 	from -:14:in `<main>'

