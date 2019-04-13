class Parent
  def hello
    "hello in parent"
  end
end

class Child < Parent
  def hello
    puts super
    "hello in child"
  end
end

child = Child.new
child.hello # => "hello in child"

# >> hello in parent
