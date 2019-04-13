# 基本メソッド
str = 'timtim is cool guy'
str.empty? # => false
"".empty? # => true
str.length # => 18
str.size # => 18
str.include?("guy") # => true
str.start_with?("tim") # => true

# 演算
'tim' + 'tim' # => "timtim"
'tim' * 3 # => "timtimtim"
"Result: %04d" % 42 # => "Result: 0042"

str = "Tim"
str << "tim"
str # => "Timtim"

# sliceで切り出し
str = "Timtim is very kind to Yoko."
str.slice(0,6) # => "Timtim"
str.slice(7..8) # => "is"
str.slice(/v\w*/) # => "very"
str.slice(-5,4) # => "Yoko"
 #[]はsliceのショートハンド
str[0..5] # => "Timtim"

# 空白の除去
str = " tim 	 "
str.strip # => "tim"
str.rstrip # => " tim"
str.lstrip # => "tim \t "


# sub/gsub
str = '113-0003'
str.sub(/[0-9]{3}/,'x') # => "x-0003"
str.gsub(/[0-9]{3}/,'x') # => "x-x3"

#配列化
str = "timtim, alice, Yoko"
str.split(',') # => ["timtim", " alice", " Yoko"]
'Alice'.split(//) # => ["A", "l", "i", "c", "e"]
'Alice'.chars # => ["A", "l", "i", "c", "e"]
'Alice'.each_char # => #<Enumerator: "Alice":each_char>
#Enumerateということは繰り返しができる

ans =  'Alice'.each_char do |str|
  str += str
end
ans # => "Alice"

#encoding
str = "timtim"
str.encoding # => #<Encoding:US-ASCII>
new_str = str.encode(Encoding::EUC_JP)
new_str # => "timtim"


#frozen things
#同じ綴りなら同じオブジェクトを参照。
same = [
  'same'.freeze,
  "same".freeze,
  %(same).freeze
]
same.map { |str| str.object_id } # => [70163047506660, 70163047506660, 70163047506660]

