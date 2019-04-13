module Greetable
  def greet_to(name)
    "Hello, #{name} san"
  end
end

class MyObj
  extend Greetable
end

MyObj.greet_to("Yoko") # => "Hello, Yoko san"