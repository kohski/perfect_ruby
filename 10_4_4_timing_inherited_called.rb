class InheritedTiming
  class << self
    private

    def inherited(subclass)
      p subclass.ancestors # => [InheritedTimingSubclass, InheritedTiming, Object, Kernel, BasicObject]
      p subclass.instance_methods.include? :super_method # => true
      p subclass.instance_methods.include? :subclasss_method # => false
    end
  end

  def super_method
  end
end


puts "before class is defined"

class InheritedTimingSubclass < InheritedTiming
  puts "after class is defined"
  def subclasss_method
  end
end

p InheritedTimingSubclass.instance_methods.include? :super_method # => true
p InheritedTimingSubclass.instance_methods.include? :subclass_method # => false

# >> before class is defined
# >> [InheritedTimingSubclass, InheritedTiming, Object, Kernel, BasicObject]
# >> true
# >> false
# >> after class is defined
# >> true
# >> false