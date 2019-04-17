# grep = Global Regular Expression Print　=> 返り値は配列
%w(Alice Bob Charlie).grep(/a/i) # => ["Alice", "Charlie"]
['aaa','bb',1,2].grep(String) # => ["aaa", "bb"]
['aaa','bb',1,2].grep(Numeric) # => [1, 2]
['aaa','bb',1,2].grep(Integer) # => [1, 2]

object = Object.new
object.methods.grep(/\?/) # => [:instance_variable_defined?, :instance_of?, :kind_of?, :is_a?, :eql?, :respond_to?, :nil?, :tainted?, :untrusted?, :frozen?, :equal?]

# jsのfindと同じだわな
array = [4,4,2,3,3,2,5]
array.detect {|n| n.odd?} # => 3
array.find {|n| n.odd?} # => 3

# select <=> reject ※jsだとfilter
array.select{|n| n.odd?} # => [3, 3, 5]
array.reject{|n| n.even?} # => [3, 3, 5]

# tale <=> drop 
l = array.length
array.take(3) # => [4, 4, 2]
array.drop(l -3 ) # => [3, 2, 5] # !> even though it seems like unary operator

# drop_whilr(先頭から最初の偽まで)/ drop_while(最初の偽から末尾まで)
array.take_while{|n| n.even? } # => [4, 4, 2]
array.drop_while{|n| n.even? } # => [3, 3, 2, 5]

