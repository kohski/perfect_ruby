module IncludeModule
  MODULE_CONSTANT_VAR = 10
end

class ConstantClass
  include IncludeModule

  CLASS_CONSTANT = 100 # !> previous definition of CLASS_CONSTANT was here

  class InnerClass
    INNER_CLASS_CONSTANT = 1000

    def pri
      [MODULE_CONSTANT_VAR,CLASS_CONSTANT,INNER_CLASS_CONSTANT]
    end
  end
end

class Child < ConstantClass
  CHILD_CLASS_CONSTANT = 10000
end

# innerクラスは定数として補足されるんやなぁ。
ConstantClass.constants # => [:InnerClass, :CLASS_CONSTANT, :MODULE_CONSTANT_VAR]
ConstantClass.constants(false) # => [:InnerClass, :CLASS_CONSTANT]
ConstantClass::InnerClass.constants # => [:INNER_CLASS_CONSTANT]
# 親クラスのmodule_in / 親クラスのConstantは当然子クラスでも参照可能なんやなぁ
Child.constants # => [:CHILD_CLASS_CONSTANT, :InnerClass, :CLASS_CONSTANT, :MODULE_CONSTANT_VAR]


# 値の取得はgetや！
ConstantClass.const_get :CLASS_CONSTANT # => 100
ConstantClass.const_get :MODULE_CONSTANT_VAR # => 10
ConstantClass::InnerClass.const_get :INNER_CLASS_CONSTANT # => 1000

# 書き換えはsetや！
ConstantClass.const_set :CLASS_CONSTANT,10000 # => 10000 # !> already initialized constant ConstantClass::CLASS_CONSTANT
ConstantClass.const_get :CLASS_CONSTANT # => 10000

ConstantClass.const_set :CLASS_CONSTANT_NEW,2000 # => 2000
ConstantClass.const_get :CLASS_CONSTANT_NEW # => 2000