# procオブジェクト
double = Proc.new{|x| x * 2} # => #<Proc:0x00007fb5a009b200@-:2>
double.call(10) # => 20

array = [1,2,3,4,5,6] # => [1, 2, 3, 4, 5, 6]
array_shift = array.method(:shift) # => #<Method: Array#shift>

array_shift.call # => 1
array # => [2, 3, 4, 5, 6]
array_shift.call # => 2
array # => [3, 4, 5, 6]
array_shift.call # => 3
array # => [4, 5, 6]
array_shift.call # => 4
array # => [5, 6]
array_shift.call # => 5
array # => [6]
array_shift.call # => 6
array # => []
array_shift.call # => nil
array # => []