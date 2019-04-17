class Klass
  @class_instance_val = :class_instance_val # クラスインスタンス変数
  @@class_val = :class_val # クラス変数

  def instance_method1
    # クラスインスタンス変数へはインスタンスメソッドからはアクセス不可能
    @class_instance_val # !> instance variable @class_instance_val not initialized
  end

  def self.class_method
    @class_instance_val
  end

  def instance_method2
    # クラス変数は大丈夫
    @@class_val
  end

end

Klass.class_method # => :class_instance_val
klass = Klass.new
klass.instance_method1 # => nil
klass.instance_method2 # => :class_val