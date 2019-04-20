require 'fiber'

f1 = Fiber.new {
  p 'from f1'
}

f2 = Fiber.new{
  f1.transfer
  p 'from f2'
}

f2.resume # => "from f1"
p 'end' # => "end"
# >> "from f1"
# >> "end"