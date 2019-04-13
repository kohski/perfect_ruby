# integerは整数
100.class # => Integer
100000000000000000.class # => Integer

# 便利メソッド
100.odd? # => false
101.even? # => false

3.next # => 4
3.succ # => 4
3.pred # => 2

#次数変換
30.to_s # => "30"
30.to_s(2) # => "11110"
30.to_s(3) # => "1010"
30.to_s(16) # => "1e"

#to_iメソッド
Time.now.to_i # => 1555121140

# Integerメソッド
Integer('0x1E') # => 30
Integer('4423') # => 4423

#timesメソッド
ans = []
5.times do |name|
  ans << name
end
ans # => [0, 1, 2, 3, 4]

# upto/downtoメソッド
ans = []
1.upto 5 do |num|
  ans << num
end
ans # => [1, 2, 3, 4, 5]

ans = []
5.downto 1 do |num|
  ans << num
end
ans # => [5, 4, 3, 2, 1]

# 桁ごとの分解digits
2019.digits # => [9, 1, 0, 2]
2019.digits.reverse # => [2, 0, 1, 9]
30.digits(16) # => [14, 1]
