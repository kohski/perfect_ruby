o = Object.new

o.freeze
o.frozen? # => true

o.extende Enumerable # => 
# ~> -:6:in `<main>': undefined method `extende' for #<Object:0x00007f9a859906c0> (NoMethodError)
# ~> Did you mean?  extend