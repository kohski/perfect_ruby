for val in {a: 1,b: 2}
  puts val[0]
  puts val[1]
  puts "==============="
end

for key,val in {c: 1, d: 2}
  puts key
  puts val
  puts "============="
end

# >> a
# >> 1
# >> ===============
# >> b
# >> 2
# >> ===============
# >> c
# >> 1
# >> =============
# >> d
# >> 2
# >> =============