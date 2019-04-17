module IncludedModule
  def included_module_method
    :included_module_method
  end
end


class Klass
  include IncludedModule
  define_method :included_module_method_invoke,
    IncludedModule.instance_method(:included_module_method)
end

obj = Klass.new
obj.included_module_method_invoke # => :included_module_method
