class Parent
  def greet
    @greet = "hello"
  end
end

class Child < Parent
  def check
    @greet
  end
end

child = Child.new
child.greet # => "hello"
child.check # => "hello"