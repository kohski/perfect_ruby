#unboundmethodオブジェクト メソッド処理のみをレシーバと引き離して使いたい時
Array.instance_method(:shift) # => #<UnboundMethod: Array#shift>

[].method(:shift).unbind # => #<UnboundMethod: Array#shift>

unbound_shift_operator = Array.instance_method(:<<) # => #<UnboundMethod: Array#<<>
unbound_shift_operator.parameters # => [[:req]]
unbound_shift_operator.owner # => Array
unbound_shift_operator.name # => :<<

unbind_shift = [].method(:shift).unbind # => #<UnboundMethod: Array#shift>
# ↓はエラー
# unbind.shift.bind([1,2,3]) # => 
# unbind_shift.errorはそのままだと実行できないので、オブジェクトをbindしてからcallする
unbind_shift.bind([1,2,3]).call # => 1