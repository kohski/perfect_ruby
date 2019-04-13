begin
  raise 'error!'
rescue => e
  puts e.class
  puts e.message
  puts e.backtrace
else
  puts "error has not occured!"
ensure
  puts "fired even if error occurend or not occured"
end
# >> RuntimeError
# >> error!
# >> -:2:in `<main>'