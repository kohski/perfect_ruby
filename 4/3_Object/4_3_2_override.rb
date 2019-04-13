class Ruler
  attr_accessor :length
  def initialize(length)
    @length = length
  end
  
  def ==(other)
    length == other.length
  end

end

ruler1 = Ruler.new(20)
ruler2 = Ruler.new(20)
ruler3 = Ruler.new(30)
ruler1 == ruler2 # => true

# !=は==の論理否定だから別にoverrideしなくても整合が取れる
ruler3 != ruler1 # => true