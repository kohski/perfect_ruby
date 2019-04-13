class Parent
  PARENT = "constant in parent"
  TIMTIM = "ikemen"
end

class Child < Parent
end

class GrandChild < Child
end

Child.constants # => [:PARENT, :TIMTIM]
Child::PARENT # => "constant in parent"
Child::TIMTIM # => "ikemen"

GrandChild.constants # => [:PARENT, :TIMTIM]
GrandChild::PARENT # => "constant in parent"
GrandChild::TIMTIM # => "ikemen"