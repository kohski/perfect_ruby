class RemoveMethodClass
  def first_method; end
  def second_method; end
  def third_method; end
  def fource_method; end
end

RemoveMethodClass.instance_methods(false) # => [:fource_method, :first_method, :second_method, :third_method]
RemoveMethodClass.remove_method :first_method # => RemoveMethodClass
RemoveMethodClass.instance_methods(false) # => [:fource_method, :second_method, :third_method]
