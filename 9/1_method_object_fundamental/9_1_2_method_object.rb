class Dog
  def bark # !> previous definition of bark was here
    "WAN!!"
  end
end

dog = Dog.new
bark_wan = dog.method(:bark)

class Dog
  def bark # !> method redefined; discarding old bark
    "BOWWOW"
  end
end

dog.bark # => "BOWWOW"
bark_wan.call # => "WAN!!"

def dog.bark
  "kyankyan!!"
end

dog.bark # => "kyankyan!!"

bark_wan.call # => "WAN!!"