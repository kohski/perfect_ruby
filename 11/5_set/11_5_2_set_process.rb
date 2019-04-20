require 'set'

a = %w(a b c d e f)
b = %w(b d f h j k)

a | b # => ["a", "b", "c", "d", "e", "f", "h", "j", "k"]
a & b # => ["b", "d", "f"]
a - b # => ["a", "c", "e"]
