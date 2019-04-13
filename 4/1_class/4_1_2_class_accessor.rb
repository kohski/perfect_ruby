class Ruler
  attr_accessor :length
end

ruler = Ruler.new
ruler.length = 30
ruler.length # => 30

class RulerOrigin
  def length=(value)
    @length = value
  end
  def length
    @length
  end
end

ruler_origin = RulerOrigin.new
ruler_origin.length = 20
ruler_origin.length # => 20