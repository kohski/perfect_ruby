# 第二引数を返り値として利用できる
ans = catch(:foo){
  throw :foo, "returned value"
}
ans # => "returned value"