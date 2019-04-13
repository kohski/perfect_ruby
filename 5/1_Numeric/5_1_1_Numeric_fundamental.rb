# NumericClassにInteger,Float,Rational（有利数）,Complex（複素数）が含まれる

#<=>演算子 for sort用
1 <=> 2 # => -1
1 <=> 1 # => 0
1 <=> 0 # => 1

# 演算子
2.4.round # => 2
2.5.round # => 3
124.round(-1) # => 120
2.5.truncate # => 2
-3.1.truncate # => -3

# step演算
#レシーバーからスタートして、第1引数で終了。
# 第2引数が刻み幅
ans = []
3.step 5 do |num|
  ans << num
end
ans # => [3, 4, 5]

ans = []
3.step 5.1,0.2 do |num|
  ans << num
end
ans # => [3.0, 3.2, 3.4, 3.6, 3.8, 4.0, 4.2, 4.4, 4.6, 4.8, 5.0]
