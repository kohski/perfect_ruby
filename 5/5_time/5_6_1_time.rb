# 基本動作
Time.now # => 2019-04-15 14:23:20 +0900
Time.new # => 2019-04-15 14:23:20 +0900
Time.now.zone # => "JST"
Time.now.getutc # => 2019-04-15 05:23:20 UTC

#Unixエポックは1970/1/1からスタート
now = Time.now

# 経過秒数
now.to_i # => 1555305800
now.to_f # => 1555305800.004216
now.to_r # => (194413225000527/125000)

#各要素取得
now.year # => 2019
now.month # => 4
now.day # => 15
now.hour # => 14
now.min # => 23
now.sec # => 20

# 曜日取得
now.sunday? # => false
now.monday? # => true

# 比較時はナノ秒単位
a = Time.now # => 2019-04-15 14:23:20 +0900
b = Time.now # => 2019-04-15 14:23:20 +0900
a == b # => false
a.nsec # => 4547000
b.nsec # => 4575000

# 演算 1秒単位
now = Time.now # => 2019-04-15 14:23:20 +0900
now + 1        # => 2019-04-15 14:23:21 +0900

# time#strftimeでフォーマット指定が可能
now = Time.now
now.strftime('%Yyear%mmonth%dday') # => "2019year04month15day"
