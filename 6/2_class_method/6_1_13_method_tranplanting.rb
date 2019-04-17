module UnIncludedModule
  def un_included_module_instance_method
    :un_included_module_instance_method
  end
end

class Klass
  define_method :un_included_module_method, UnIncludedModule.instance_method(:un_included_module_instance_method)
end

obj = Klass.new
obj.un_included_module_method # => :un_included_module_instance_method
