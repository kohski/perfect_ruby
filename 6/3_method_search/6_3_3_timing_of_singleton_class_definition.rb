# No.1 singletonメソッドが定義される時
obj = Object.new
def obj.dfine_singleton_method
  :singleton_method
end

#No.2 特異クラス定義式を評価した時
class << obj
end

#No.3 singleto_methodを参照した時
obj.singleton_class