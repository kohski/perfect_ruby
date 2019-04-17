# eval "@instance_var" # => nil 
# eval "local_var" # => 
# eval "private_method" # => 

class EvalTarget
  def initialize
    @instance_val = 'instance_variable'
  end

  # ここでbindingすればlocal_valだけじゃなく、privatemethodのコンテキストも得ることができる
  def instance_binding
    local_val = 'local variable' # !> assigned but unused variable - local_val
    binding
  end

  private
  def private_method
    'private method'
  end
end

e1 = EvalTarget.new
binding_obj = e1.instance_binding


eval "@instance_val",binding_obj # => "instance_variable"
eval "local_val",binding_obj # => "local variable"
eval "private_method",binding_obj # => "private method"
