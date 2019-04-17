File.open './model/foo', File::APPEND | File::WRONLY | File::CREAT do |f|
  f.puts('puts style')
  f.puts
  f.print('print style')
  f.print "\n"
  f.printf '%03d', 7
  f.print "\n"
  f.putc 97 #文字コード番号
  f.putc 98 #文字コード番号
  f.putc 99 #文字コード番号
end