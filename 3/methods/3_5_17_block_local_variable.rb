# 同名のブロックの中からアクセスできる
people = []
%w(Alice Bob Dave Steve Matheu).each do |person| 
  people << person
end
puts people.inspect
# >> ["Alice", "Bob", "Dave", "Steve", "Matheu"]