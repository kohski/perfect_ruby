m = ''
File.open 'test.txt' do |file|
  m = file.read
end

decode = Marshal.load(m)
p decode 