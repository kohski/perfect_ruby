# 仮引数に*をつけると可変長になる
def greet(name,*messages)
  messages.each do |message|
    puts "#{message}, #{name}"
  end
end

greet("yoko","hello","hi","good evening","goof night") 
# >> hello, yoko
# >> hi, yoko
# >> good evening, yoko
# >> goof night, yoko