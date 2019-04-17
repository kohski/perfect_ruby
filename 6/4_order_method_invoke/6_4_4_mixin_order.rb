module HelloModule
  def hello
    :hello
  end
end

class InheritClass
  include HelloModule
  def hello
    :hello_mixin
  end
end

inherit_obj = InheritClass.new
inherit_obj.hello # => :hello_mixin