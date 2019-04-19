class BindingCreator
  def create_binding
    a = 1 # !> assigned but unused variable - a
    binding
  end
end

creator = BindingCreator.new
binding_obj = creator.create_binding
binding_obj.receiver # => #<BindingCreator:0x00007fc45b1abd10>
creator == binding_obj.receiver # => true
