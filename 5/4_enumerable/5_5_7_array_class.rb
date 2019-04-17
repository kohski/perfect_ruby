# Arrayコンストラクタ
Array.new(5,1) # => [1, 1, 1, 1, 1]
Array.new(5) {|n| n+1 } # => [1, 2, 3, 4, 5]

# Arrayメソッド
Array("Alice") # => ["Alice"]
Array(["Alice"]) # => ["Alice"]
Array([["Alice"]]) # => [["Alice"]]
Array(nil) # => []

[1,2,3,4,5].include?(2) # => true
[1,2,3,4,5].include?(10) # => false

# Array演算
[1,2,3] + [4,5] # => [1, 2, 3, 4, 5]
[1,2,3,4] - [2,3]  # => [1, 4]
[1,2,3,4] - [4,5] # => [1, 2, 3]
[1,2,3,4] & [3,4,5] # => [3, 4]
[1,2,3] * 2 # => [1, 2, 3, 1, 2, 3]


# get elemnts
array = Array.new(10) {|n| n+1 }
array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array[2,5] # => [3, 4, 5, 6, 7]
array[3..7] # => [4, 5, 6, 7, 8]

# get index
array = Array.new(10) {|n| n+1 }
array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.values_at(2) # => [3]
array.values_at(1,3,5) # => [2, 4, 6]

array.first # => 1
array.first(3) # => [1, 2, 3]

array.last # => 10
array.last(3) # => [8, 9, 10]

# random出力
array.sample # => 7
array.sample # => 6
array.sample # => 3

array.sample(3) # => [10, 1, 6]
array.sample(3) # => [4, 3, 6]
array.sample(3) # => [9, 7, 3]

# arrayの操作
array = Array.new(10) {|n| n+1 }
array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array[0] = 10
array # => [10, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# nil で埋める
array[15] = 10
array # => [10, 2, 3, 4, 5, 6, 7, 8, 9, 10, nil, nil, nil, nil, nil, 10]

array = Array.new(5) {|n| n+1 }
array # => [1, 2, 3, 4, 5]

elm = array.push(15)
array # => [1, 2, 3, 4, 5, 15]
elm # => [1, 2, 3, 4, 5, 15]

elm = array.pop
array # => [1, 2, 3, 4, 5]
elm # => 15

elm = array.shift
array # => [2, 3, 4, 5]
elm # => 1

elm = array.unshift(15)
array # => [15, 2, 3, 4, 5]
elm # => [15, 2, 3, 4, 5]

# select/reject
array = Array.new(6) {|n| (n+1) * 2}
array # => [2, 4, 6, 8, 10, 12]

# 合致するものだけの配列を作るselect
array.select {|n| n % 4 == 0 } # => [4, 8, 12]
array.select {|n| n % 7 == 0 } # => []
# rejectはselectの逆
array.reject {|n| n % 3 == 0 } # => [2, 4, 8, 10]
# delete_ifは破壊的メソッドやで...
array.delete_if {|n| n % 4 == 0} # => [2, 6, 10]
array # => [2, 6, 10]
# keep_if
array = Array.new(6) {|n| (n+1) * 2}
array # => [2, 4, 6, 8, 10, 12]
array.keep_if{|n| n % 3 == 0} # => [6, 12]

#deleteしたいとき
array = Array.new(6) {|n| (n+1) * 2}
array.push(4)
array # => [2, 4, 6, 8, 10, 12, 4]

# deleteは合致するもの全て消す
elm = array.delete(4) 
array # => [2, 6, 8, 10, 12]
elm # => 4

array.delete_if {|n| n % 3 == 0}
array # => [2, 8, 10]

# forming_array
# compactはnilを削除
array = [1,2,nil,4,nil,[],false]
array.compact # => [1, 2, 4, [], false]
array # => [1, 2, nil, 4, nil, [], false]

array = Array.new(3) {|n| (n+1) * 3}
array # => [3, 6, 9]
array[10] = 10
array # => [3, 6, 9, nil, nil, nil, nil, nil, nil, nil, 10]
array.compact # => [3, 6, 9, 10]

array = Array.new(10) {|n| n % 3 + 1 }
array # => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]
array.uniq # => [1, 2, 3]
array # => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

array = [[1,2],[3,4],[5,6],[7,8]]
array.flatten # => [1, 2, 3, 4, 5, 6, 7, 8]

array = Array.new(5) { (rand * 10).round + 1  }
array # => [8, 3, 4, 8, 6]
array.sort # => [3, 4, 6, 8, 8]

# map!は...
%w(Alice Dave Bob Charlie).map(&:upcase) # => ["ALICE", "DAVE", "BOB", "CHARLIE"]

# 配列の連結
array = Array.new(10,1) # => [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
array.join.to_i # => 1111111111