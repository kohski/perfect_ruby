class Klass
  @class_instance_val = :class_instance_val
  @@class_val = :class_val
end

class ChildKlass < Klass
  #クラスインスタンス変数は継承してもだめ！
  @class_instance_val # => nil # !> instance variable @class_instance_val not initialized
  @@class_val # => :class_val
end