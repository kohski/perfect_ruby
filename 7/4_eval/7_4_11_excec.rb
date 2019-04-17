class EvalTarget
  CONST_VAL = "EvalTarget::CONST"
  attr_accessor :instance_val
end

CONST_VAL = "CONST"

e1 = EvalTarget.new

e1.instance_eval { @instance_val = CONST_VAL }
e1.instance_val # => "CONST"

e1.instance_exec(CONST_VAL) {|const_val| @instnace_val = const_val }
e1.instance_val # => "CONST"