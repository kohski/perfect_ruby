o = Object.new

o.class # => Object
o.is_a?(Object) # => true
o.object_id # => 70128679555100
o.nil? # => false
o.frozen? # => false

Object.new == Object.new # => false
[1,2,3] == [1,2,3] # => true
/pattern/ == /pattern/  # => true
'Alice' == 'Alice' # => true