class Arity
  def arity_0; end
  def arity_1(x); end
  def arity_2(x,y); end

  def arity_variable_length(*x); end
  def arity_variable_length_with_default_arg(x, *y); end
  def arity_default_val_1(x=1); end
  def arity_default_val_2(x, y=2); end
  def arity_default_val_3(x,z, *y); end
end

arity_obj = Arity.new
arity_obj.method(:arity_0).arity # => 0
arity_obj.method(:arity_1).arity # => 1
arity_obj.method(:arity_2).arity # => 2

# 可変長引数/デフォルト引数がある場合は、符号マイナス
# あとは引数の数になる
# (必須の引数の数 + 1) * -1
arity_obj.method(:arity_variable_length).arity # => -1
arity_obj.method(:arity_variable_length_with_default_arg).arity # => -2
arity_obj.method(:arity_default_val_1).arity # => -1
arity_obj.method(:arity_default_val_2).arity # => -2
arity_obj.method(:arity_default_val_3).arity # => -3
