class MethodRemovedClass
  def first_method; end
  def second_method; end
  def third_method; end
  def fourth_method; end

  class << self
    private
    def method_removed(method_name)
      p "method removed:#{ method_name }" # => "method removed:second_method"
    end
  end
end

class MethodRemovedClass
  remove_method :second_method 
end
# >> "method removed:second_method"