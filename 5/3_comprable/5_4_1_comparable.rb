class Ruler 
  include Comparable
  attr_accessor :length

  def initialize(len)
    self.length = len
  end

  def <=>(other)
    length <=> other.length
  end

end

short = Ruler.new(30)
long = Ruler.new(100)

short < long # => true
short > long # => false
short == long # => false
