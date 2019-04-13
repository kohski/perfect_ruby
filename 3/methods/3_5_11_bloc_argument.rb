# yieldに引数渡してブロックで処理することが可能
# 引数の増減には寛容
def with_current_time
  yield Time.now
end

with_current_time do |now|
  puts now
end

with_current_time do
  puts "hi"
end

with_current_time do |now,yeah|
  puts now
  puts yeah
end
# >> 2019-04-12 15:39:33 +0900
# >> hi
# >> 2019-04-12 15:39:33 +0900
# >> 

#=============================================
# blockでデフォルト数値を定義可能
def default_argument
  yield 
end

default_argument do |val = "hi"|
  puts val
end
# >> hi

#=============================================
# block側で引数展開も可能
def flexible_argument
  yield 1,2,3
end

flexible_argument do |*num| 
  puts num.inspect
end
# >> [1, 2, 3]