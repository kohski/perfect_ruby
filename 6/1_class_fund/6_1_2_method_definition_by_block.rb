# klass_obj = nil

ThirdClass = Class.new do |klass|
  # klass_obj = klass
  # klass == self # => true

  def hello 
    :hello
  end
end

# klass_obj == ThirdClass # => true
third_class_instance = ThirdClass.new
third_class_instance.hello # => :hello