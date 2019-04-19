class AddedMethodClass
  private
  def singleton_method_added(method_name)
    p "added_singleton_method:#{method_name}" # => "added_singleton_method:add_from_singleton_method"
  end 
end

obj = AddedMethodClass.new
def obj.add_from_singleton_method; end
# >> "added_singleton_method:add_from_singleton_method"