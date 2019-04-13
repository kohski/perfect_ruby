class Foo
  def override_me
    "in Foo class"
  end
end

foo = Foo.new
bar = Foo.new

def bar.override_me
  super +  "! timtim suteki!" 
end

bar.override_me # => "in Foo class! timtim suteki!"
foo.override_me # => "in Foo class"
