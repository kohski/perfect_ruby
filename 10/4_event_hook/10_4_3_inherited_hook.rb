class SuperClass
  class << self
    def inherited(subclass)
      @subclasses ||=[]
      @subclasses << subclass
    end

    def subclasses
      @subclasses # !> instance variable @subclasses not initialized
    end
  end
end

SuperClass.subclasses # => nil

class Sub1 < SuperClass; end
class Sub2 < SuperClass; end
class Sub3 < SuperClass; end

SuperClass.subclasses # => [Sub1, Sub2, Sub3]