class InstanceCountClass
  @instance_count = 0

  def self.instance_count_up
    @instance_count += 1 if @instance_count
  end

  def self.instance_count
    @instance_count
  end

  def initialize
    self.class.instance_count_up
  end

end

InstanceCountClass.new
InstanceCountClass.new
InstanceCountClass.new
InstanceCountClass.instance_count # => 3