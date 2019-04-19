module IncludedCount
  class << self
    def included(klass)
      @included ||= []
      @included << klass
    end

    def included_module_and_class
      @included
    end

    def included_count
      @included ? @included.count : 0 # !> instance variable @included not initialized
    end
  end
end

IncludedCount.included_count # => 0

class IncludedClass1
  include IncludedCount
end

class IncludedClass2
  include IncludedCount
end

class IncludedClass3
  include IncludedCount
end

module IncludedModule4
  include IncludedCount
end


IncludedCount.included_count # => 4
IncludedCount.included_module_and_class # => [IncludedClass1, IncludedClass2, IncludedClass3, IncludedModule4]