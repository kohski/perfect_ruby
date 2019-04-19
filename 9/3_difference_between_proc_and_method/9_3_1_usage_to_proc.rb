# methodオブジェクトをprocオブジェクトに変換
class CurryMethod
  def sum(a, b)
    a + b
  end
end
sum_method = CurryMethod.new.method(:sum)
sum_method.to_proc
sum_method.to_proc.call(1,2) # => 3

# mapオブジェクトはブロックを引数にとる。
# メソッドオブジェクトをプロックにして渡してあげる
# 要素一つ一つに実行するようなのがいける
(0..10).map &2.method(:*).to_proc # => [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20] # !> `&' interpreted as argument prefix


p sum_method.curry #=>
p sum_method.curry.call(1,2) #=>

