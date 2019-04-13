a,b = 1,2
a # => 1
b # => 2

a,b = [1,2,3] 
a # => 1
b # => 2

a,*b = [1,2,3] 
a # => 1
b # => [2, 3]

a,b,c = [1,2]
a # => 1
b # => 2
c # => nil

# 値交換でよくつかう
a = 'a'
b = 'b'
a,b = b,a
a # => "b"
b # => "a"