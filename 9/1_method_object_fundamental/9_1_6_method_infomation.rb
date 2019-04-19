class MethodInfo
  def sample_method; end
end

obj = MethodInfo.new # => #<MethodInfo:0x00007fa79286b460>
sample_method = obj.method(:sample_method)

sample_method.owner # => MethodInfo
sample_method.name # => :sample_method
sample_method.receiver # => #<MethodInfo:0x00007fa79286b460>
sample_method.receiver == obj # => true
