File.open './model/foo' do |f|
  puts f.atime
  puts f.ctime
  puts f.mtime
  puts f.size
end