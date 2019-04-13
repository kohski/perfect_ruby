module Greetable
  def greet_to(name)
    "Hello #{name}, My name is #{self.class}."
  end
end

class Alice
  include Greetable
end

alice = Alice.new
alice.greet_to("Tim") # => "Hello Tim, My name is Alice."