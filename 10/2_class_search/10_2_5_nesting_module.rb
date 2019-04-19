Module.nesting # => []

module OutsideModule
  Module.nesting # => [OutsideModule]
  class InnerClass
    Module.nesting # => [OutsideModule::InnerClass, OutsideModule]
    class InnerInnerClass
      Module.nesting # => [OutsideModule::InnerClass::InnerInnerClass, OutsideModule::InnerClass, OutsideModule]
    end
  end
end

class OutsideModule::InnerClass
  Module.nesting # => [OutsideModule::InnerClass]
end

OutsideModule::InnerClass.class_eval do
  Module.nesting # => []
end

