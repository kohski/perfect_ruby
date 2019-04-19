class OriginalClass
  def hello 
    'hello'
  end
end

class OverrideClass < OriginalClass
  def hello
    'hello hello'
  end
end

hello_method = OverrideClass.new.method(:hello)
hello_method # => #<Method: OverrideClass#hello>
hello_method.call # => "hello hello"
hello_method.super_method # => #<Method: OriginalClass#hello>
hello_method.super_method.call # => "hello"

