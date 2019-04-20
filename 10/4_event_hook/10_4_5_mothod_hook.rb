class AddedMethodClass
  def before_added_method; end

  class << self
    private
    def method_added(method_name)
      p "method added:#{method_name}" # => "method added:after_added_method", "method added:add_from_define_method", "method added:add_from_class_eval"
    end
  end

  def after_added_method; end
  define_method :add_from_define_method, ->(){}
end

AddedMethodClass.class_eval do
  def add_from_class_eval; end
end


# >> "method added:after_added_method"
# >> "method added:add_from_define_method"
# >> "method added:add_from_class_eval"