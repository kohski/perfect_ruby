returned =
begin
  value ="aaaaaa"
  raise
rescue => e # !> assigned but unused variable - e
  value
else
  
ensure
  
end

returned # => "aaaaaa"