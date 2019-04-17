module HelloModule
  def hello
    :hello_module
  end
end

class GrandParent
  def hello
    :grand_parent
  end
end

class Parent < GrandParent
  include HelloModule
  def hello
    :parent
  end
end

class Child < Parent
end

child = Child.new
child.hello # => :parent