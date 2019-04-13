class MyClass
  @@covar = "Class variable"

  def covar_in_method
    @@covar
  end

  def self.covar_in_class_method
    @@covar
  end

  def change_covar(value)
    @@covar = value
  end

end

obj = MyClass.new

obj.covar_in_method # => "Class variable"
MyClass.covar_in_class_method  # => "Class variable"

obj.change_covar("timtim")

obj.covar_in_method # => "timtim"
MyClass.covar_in_class_method  # => "timtim"
