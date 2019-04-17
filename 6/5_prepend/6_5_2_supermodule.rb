module SupreModule
  def  super_call_module
    super
  end
end

class OverrideClass
  prepend SupreModule
  def super_call_module
    :override
  end
end

override = OverrideClass.new
override.super_call_module # => :override