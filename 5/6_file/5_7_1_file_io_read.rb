file = File.open('./model/sample.txt')
puts file.read
file.close

# blockを渡せばcloseは不要
puts "pass block argument to method"
File.open './model/sample.txt' do |file|
  puts file.read
end

# getsは1行ずつ実行
puts "gets method"
File.open './model/sample.txt' do |file|
  puts file.gets
  puts file.gets
  puts file.gets
  puts file.gets
  puts file.gets
  puts file.gets
  puts file.gets
end

puts "combine while statment is effective"
File.open './model/sample.txt' do |file|
  while line = file.gets do
    puts line
  end
end

puts "each_line method is more effective"
File.open './model/sample.txt' do |file|
  file.each_line do |line|
    puts line.gsub(/\n/,'')
  end
end

puts "simply you can get entire contents as string"
p File.read('./model/sample.txt')