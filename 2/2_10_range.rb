(1..5).include?(5) # => true
(1..5).to_a # => [1, 2, 3, 4, 5]

(1...5).include?(5) # => false
(1...5).to_a # => [1, 2, 3, 4]

#Rangeは結合度合いに注意。