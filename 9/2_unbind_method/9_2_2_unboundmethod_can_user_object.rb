class SuperKlass
  def super_method
    self.class
  end
end

class Klass < SuperKlass
end

class NoinheritKlass
  def super_method
    self.class
  end
end

super_klass = SuperKlass.new
klass = Klass.new
not_inherit_klass = NoinheritKlass.new

unbind_super_method = SuperKlass.instance_method(:super_method)

unbind_super_method.bind(super_klass).call # => SuperKlass

unbind_super_method.bind(klass).call # => Klass

unbind_super_method.bind(not_inherit_klass) # => 
# ~> -:26:in `bind': bind argument must be an instance of SuperKlass (TypeError)
# ~> 	from -:26:in `<main>'