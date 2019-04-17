class Klass
  @@instance_count = 0

  def self.instance_count
    @@instance_count
  end

  def initialize
    @@instance_count += 1
  end
end

class Child < Klass
end

Child.new
Child.new
Child.new
Klass.instance_count # => 3
