class Parent
  @@val = "foo"

  def self.say
    @@val
  end
end

class Child < Parent
  def say
    @@val
  end

  def change
    @@val = 'bar'
  end
end

Parent.say # => "foo"
child = Child.new 
child.say # => "foo"
child.change # => "bar"
child.say # => "bar"
Parent.say # => "bar"