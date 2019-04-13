# 後置whileもできる。処理が連続している場合はbegin ~ endでかこめる
i = 0
begin
  sleep(1)
  puts i
  i += 1
end while i < 3
# >> 0
# >> 1
# >> 2
# >> 3
# >> 4
# >> 5