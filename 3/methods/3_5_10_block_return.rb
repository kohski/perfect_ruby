def display_block
  yield 
end

ans = display_block do
  4423
end 
ans # => 4423

ans2 = display_block do
  next 42
end
ans2 # => 42

ans3 = display_block do
  break 42
end
ans3 # => 42
