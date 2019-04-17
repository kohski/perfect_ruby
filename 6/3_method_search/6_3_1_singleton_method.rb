class OriginalClass
end

obj = OriginalClass.new

def obj.new_singleton_method
  :new_singleton_method
end

obj.class.method_defined? :new_singleton_method # => false
obj.singleton_class.method_defined? :new_singleton_method # => true
