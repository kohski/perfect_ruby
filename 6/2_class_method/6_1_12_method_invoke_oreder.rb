module FirstModule
  def samename_module_method
    :first_module_method
  end
end

module SecondeModule
  def samename_module_method
    :second_module_method
  end
end

class Klass
  include FirstModule
  include SecondeModule

  # 普通はincludeされたメソッドは最後の方から読まれるが、define methodで順番を変えることができる
  define_method :samename_module_method,FirstModule.instance_method(:samename_module_method)
end

klass = Klass.new
klass.samename_module_method # => :first_module_method