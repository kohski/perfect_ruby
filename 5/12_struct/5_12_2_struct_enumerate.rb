Foo = Struct.new(:one, :two, :three)
foo = Foo.new('a','b','c')
foo.each {|value|  value } # => #<struct Foo one="a", two="b", three="c">
foo.each_pair{|key,value| "#{key},#{value}" } # => #<struct Foo one="a", two="b", three="c">
foo.map{|value| value.upcase} # => ["A", "B", "C"]
