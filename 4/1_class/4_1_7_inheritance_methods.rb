class Parent
  def greet
    "Hello"
  end
end

class Child < Parent
  def greet(name)
    "Hi,#{name}"
  end
end

class GrandChild < Child
    def greet(name)
      super + "!#{name},I love you"
    end
end

parent,child,grandchild = Parent.new,Child.new,GrandChild.new
parent.greet # => "Hello"
child.greet("YOKO") # => "Hi,YOKO"
grandchild.greet("Tomowo") # => 


# ~> -:8:in `greet': wrong number of arguments (given 0, expected 1) (ArgumentError)
# ~> 	from -:15:in `greet'
# ~> 	from -:22:in `<main>'