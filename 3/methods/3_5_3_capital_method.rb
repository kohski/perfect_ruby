# 大文字開始で定義されたメソッドは定数と思われちゃうから、()必須
def Hello
  "hello"
end

Hello() # => "hello"
Hello  # => 
# ~> -:6:in `<main>': uninitialized constant Hello (NameError)