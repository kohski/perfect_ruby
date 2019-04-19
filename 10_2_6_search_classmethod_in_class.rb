class ChildClass
  class << self
    def class_method; end
  end

  def instance_method
  end
end

# 全部のクラスメソッド
ChildClass.methods # => [:class_method, :allocate, :superclass, :new, :<=>, :<=, :>=, :==, :===, :included_modules, :include?, :name, :ancestors, :attr, :attr_reader, :attr_writer, :attr_accessor, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :constants, :const_get, :const_set, :const_defined?, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :freeze, :inspect, :private_constant, :public_constant, :const_missing, :deprecate_constant, :include, :singleton_class?, :prepend, :module_exec, :module_eval, :class_eval, :remove_method, :<, :>, :undef_method, :class_exec, :method_defined?, :alias_method, :to_s, :private_class_method, :public_method_defined?, :private_method_defined?, :protected_method_defined?, :public_class_method, :autoload?, :instance_method, :public_instance_method, :define_method, :autoload, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :instance_variable_set, :protected_methods, :instance_variables, :private_methods, :method, :public_method, :public_send, :singleton_method, :define_singleton_method, :extend, :to_enum, :enum_for, :=~, :!~, :eql?, :respond_to?, :object_id, :send, :display, :class, :nil?, :hash, :dup, :singleton_class, :clone, :then, :itself, :yield_self, :untaint, :taint, :tainted?, :trust, :untrust, :untrusted?, :singleton_methods, :frozen?, :methods, :public_methods, :equal?, :!, :instance_exec, :!=, :instance_eval, :__id__, :__send__]
# まさにのクラスメソッド
ChildClass.methods(false) # => [:class_method]


