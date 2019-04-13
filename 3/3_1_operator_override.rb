class MyObject
  def initialize(name)
    @name = name
  end
  def ==(other)
    self.class == other.class
  end
end

user = MyObject.new("tim")
user2 = MyObject.new("tum")
user == user2 # => true