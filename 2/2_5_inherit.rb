class Parent

  def hello 
    "hello in parent"
  end

  private
  def hello_in_private
    "hello in parent private"
  end
end

class Child < Parent
  def hi
    "hi in child"
  end

  def invoke_private
    "timtim "+ hello_in_private
  end
end

child = Child.new
child.hi # => "hi in child"
child.hello # => "hello in parent"
child.invoke_private  # => "timtim hello in parent private"
