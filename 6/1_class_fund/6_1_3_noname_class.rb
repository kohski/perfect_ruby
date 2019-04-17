FirstClass = Class.new
FirstClass.name # => "FirstClass"

klass = Class.new
klass.name # => nil
k = klass.new
k # => #<#<Class:0x00007f882d937dc8>:0x00007f882d9379b8>