class Numeric
  def steps
    return [] if self <= 0
    0.upto(self).to_a
  end
end

10.steps # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
1.steps # => [0, 1]
0.steps # => []
-1.steps # => []