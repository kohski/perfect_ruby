class BaseClass
  def hello
    :hello
  end
end

class InheritClass < BaseClass
  def hello
    :hello_inherit 
  end
end

inherit_object = InheritClass.new
inherit_object.hello # => :hello_inherit