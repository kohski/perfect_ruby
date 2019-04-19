class ParentClass
  def super_public_method; end
  private
  def super_private_method; end
  protected
  def super_protected_method; end
end

class Child < ParentClass
  def public_method; end
  private
  def private_method; end
  protected
  def protected_method; end
end

child = Child.new

def child.singleton_method; end

child.methods # => [:singleton_method, :public_method, :protected_method, :super_public_method, :super_protected_method, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :instance_variable_set, :protected_methods, :instance_variables, :private_methods, :method, :public_send, :define_singleton_method, :extend, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :to_s, :display, :class, :nil?, :hash, :dup, :singleton_class, :clone, :then, :itself, :yield_self, :untaint, :taint, :tainted?, :trust, :untrust, :untrusted?, :singleton_methods, :frozen?, :methods, :public_methods, :equal?, :!, :==, :instance_exec, :!=, :instance_eval, :__id__, :__send__]
child.public_methods # => [:singleton_method, :public_method, :super_public_method, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :instance_variable_set, :protected_methods, :instance_variables, :private_methods, :method, :public_send, :define_singleton_method, :extend, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :to_s, :display, :class, :nil?, :hash, :dup, :singleton_class, :clone, :then, :itself, :yield_self, :untaint, :taint, :tainted?, :trust, :untrust, :untrusted?, :singleton_methods, :frozen?, :methods, :public_methods, :equal?, :!, :==, :instance_exec, :!=, :instance_eval, :__id__, :__send__]
child.private_methods # => [:private_method, :super_private_method, :DelegateClass, :sprintf, :format, :Integer, :Float, :String, :Array, :Hash, :warn, :local_variables, :trap, :abort, :require, :rand, :srand, :autoload, :raise, :fail, :global_variables, :__method__, :__callee__, :__dir__, :require_relative, :exec, :autoload?, :system, :eval, :iterator?, :block_given?, :catch, :throw, :loop, :exit!, :binding, :spawn, :trace_var, :untrace_var, :at_exit, :select, :`, :Rational, :gem_original_require, :Complex, :set_trace_func, :pp, :gem, :test, :respond_to_missing?, :caller_locations, :caller, :fork, :exit, :gets, :proc, :lambda, :initialize_copy, :initialize_clone, :initialize_dup, :URI, :sleep, :load, :syscall, :open, :printf, :print, :putc, :puts, :readline, :readlines, :p, :singleton_method_added, :method_missing, :singleton_method_removed, :singleton_method_undefined, :initialize]
child.protected_methods # => [:protected_method, :super_protected_method]
child.singleton_methods # => [:singleton_method]
child.methods(false) #=> 



