module ExtendModule
  def extend_module_method
    :extend_module_method
  end
end


obj = Object.new
obj.singleton_class.ancestors # => [#<Class:#<Object:0x00007fb3ec8e7ea0>>, Object, Kernel, BasicObject]
obj.extend ExtendModule
obj.extend_module_method # => :extend_module_method
obj.singleton_class.ancestors # => [#<Class:#<Object:0x00007fb3ec8e7ea0>>, ExtendModule, Object, Kernel, BasicObject]
