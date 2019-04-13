VALUE = "toplevel"

class Foo
  VALUE = "in Foo class"
  def self.value
    VALUE
  end
end
Foo.value # => "in Foo class"


class Bar
  VALUE = "in Bar class"
  class Baz
    def self.value
      VALUE
    end
  end
end
Bar::Baz.value # => "in Bar class"