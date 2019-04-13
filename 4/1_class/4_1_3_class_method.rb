class Ruler
  attr_accessor :length

  def self.pair
    [new,new]
  end
end

Ruler.pair # => [#<Ruler:0x00007ffc85077658>, #<Ruler:0x00007ffc85077630>]

class RulerAnotherDescription
  attr_accessor :length
  class << self
    def double
      [new,new]
    end
    def triple
      [new,new,new]
    end
  end
end

RulerAnotherDescription.double # => [#<RulerAnotherDescription:0x00007ffc85076f78>, #<RulerAnotherDescription:0x00007ffc85076f50>]
RulerAnotherDescription.triple # => [#<RulerAnotherDescription:0x00007ffc85076b40>, #<RulerAnotherDescription:0x00007ffc85076b18>, #<RulerAnotherDescription:0x00007ffc85076af0>]