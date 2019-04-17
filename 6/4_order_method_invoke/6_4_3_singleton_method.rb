class BaseClass
  def hello
    :hello
  end
end

base_object = BaseClass.new
def base_object.hello
  :hello_singleton
end
base_object.hello # => :hello_singleton