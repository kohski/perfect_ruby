def greet(name, first, second, third)
  puts "#{name}, #{first}, #{second},#{third}"
end

messages = ["hello","goodbye","nice"]

# methodの呼び出し時に*messagesをつけると配列を展開してくれる。
# 展開されて渡されるだけなので引数の数には　厳格
greet("Timtim",*messages)
# >> Timtim, hello, goodbye,nice