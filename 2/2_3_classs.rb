class MyClass
  def hello
    puts "hello"
  end
end

obj = MyClass.new # !> assigned but unused variable - obj
# obj.hello  # => nil
# 
class Ruler
  def length=(value)
    @value = value
  end

  def length
    @value
  end
end

ruler = Ruler.new
ruler.length = 10
ruler.length # => 10

class RulerSecond
  attr_accessor :length
end

ruler2 = RulerSecond.new
ruler2.length = 15
ruler2.length # => 15

class RulerConstractor
  attr_accessor :length
  def initialize(length)
    @length = length
  end
end

ruler3 = RulerConstractor.new(20)
ruler3.length # => 20

class RulerClassMethos
  attr_accessor :length
  def self.pair
    [new,new]
  end
end

RulerClassMethos.pair # => [#<RulerClassMethos:0x00007ff59e0cd410>, #<RulerClassMethos:0x00007ff59e0cd3e8>]