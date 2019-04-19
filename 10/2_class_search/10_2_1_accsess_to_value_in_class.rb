class ClassVariables
  @@class_variable = :class_variable

  def define_lazy_class_variable
    @@lazy_class_variable = :lazy_class_variable
  end
end

# class変数のその時の定義済みを出す！
ClassVariables.class_variables # => [:@@class_variable]
ClassVariables.new.define_lazy_class_variable
ClassVariables.class_variables # => [:@@class_variable, :@@lazy_class_variable]

# ピンポイント問い合わせはclass_variable_defined? :@@変数名
ClassVariables.class_variable_defined? :@@class_variable # => true
ClassVariables.class_variable_defined? :@@undefined_class_variable # => false

# 値の取得はclass_variable_get
ClassVariables.class_variable_get :@@class_variable # => :class_variable
# ClassVariables.class_variable_get :@@undefined_class_variable # => errorになってまう！

# もちろんsetもできる
ClassVariables.class_variable_set :@@class_variable, :class_variable_set # => :class_variable_set
ClassVariables.class_variable_get :@@class_variable # => :class_variable_set

# 未定義のやつも後からセット可能
ClassVariables.class_variable_set :@@undefind_class_variable, :undefined_class_variable # => :undefined_class_variable
ClassVariables.class_variable_get :@@undefind_class_variable # => :undefined_class_variable