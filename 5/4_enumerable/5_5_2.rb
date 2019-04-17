[true,true,true].all? # => true
[false,true,true].all? # => false

[false,false,false].none? # => true
[false,false,true].none? # => false

[true,true,true].any? # => true
[true,false,false].any? # => true
[false,false,false].any? # => false

[false,false,true].one? # => true
[false,true,true].one? # => false
