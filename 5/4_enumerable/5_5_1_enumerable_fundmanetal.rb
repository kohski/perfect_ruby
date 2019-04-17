ans = %W(Alice Charlie Tim).each_with_index do |name,index|
  "#{index}: #{name}"
end
ans # => ["Alice", "Charlie", "Tim"]


ans = []
(1..5).reverse_each {|n| ans << n} 
ans # => [5, 4, 3, 2, 1]

ans = []
(1..10).each_slice 3 do |a,b|
  ans << [a,b]
end
ans # => [[1, 2], [4, 5], [7, 8], [10, nil]]

ans = []
(1..10).each_cons 3 do |a,b|
  ans << [a,b]
end
ans # => [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8], [8, 9]]

(1..3).cycle do |n|
  puts n
  sleep 1
end