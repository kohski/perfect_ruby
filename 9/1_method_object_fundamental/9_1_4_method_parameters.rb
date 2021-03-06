class MethodParameter
  def arity0();end
  def arity1(x);end
  def arity1_and_default_val(x = 1);end
  def arity1_and_valiable_arg(x, *y);end
  def arity1_and_block_arg(x, &y);end
end

method_params = MethodParameter.new

# :req 必須引数/ :opt デフォルト引数/ :rest 可変長引数/ :block ブロック引数
method_params.method(:arity0).parameters # => []
method_params.method(:arity1).parameters # => [[:req, :x]]
method_params.method(:arity1_and_default_val).parameters # => [[:opt, :x]]
method_params.method(:arity1_and_valiable_arg).parameters # => [[:req, :x], [:rest, :y]]
method_params.method(:arity1_and_block_arg).parameters # => [[:req, :x], [:block, :y]]
