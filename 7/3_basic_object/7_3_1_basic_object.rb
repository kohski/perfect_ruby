class DelegateArray
  
  def initialize
    @array =[]
  end

  def method_missing(name, *args)
    @array.__send__ name, *args
  end

end

delegate_array = DelegateArray.new
delegate_array << 1
delegate_array # => #<DelegateArray:0x00007fca3e8f7f90 @array=[1]>