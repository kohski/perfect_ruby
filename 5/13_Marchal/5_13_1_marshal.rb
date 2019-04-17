array = [1,'2',[3],Time.now]

m = Marshal.dump(array) # => "\x04\b[\ti\x06I\"\x062\x06:\x06EF[\x06i\bIu:\tTime\r\xE7\xCD\x1D\x80\xDC\xBD\xA4`\a:\voffseti\x02\x90~:\tzoneI\"\bJST\x06;\x00F"

File.write 'test.txt',m