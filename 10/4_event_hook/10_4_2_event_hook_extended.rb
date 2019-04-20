module ExtendedCount
  class << self
    def extended(obj)
      @extended ||= []
      @extended << obj
    end

    def extended_objects
      @extended
    end

    def extended_count
      @extended ? @extended.count: 0 # !> instance variable @extended not initialized
    end
  end
end

ExtendedCount.extended_count # => 0

5.times do
  Object.new.extend ExtendedCount
end

ExtendedCount.extended_count # => 5
ExtendedCount.extended_objects # => [#<Object:0x00007f9f6e97b3e0>, #<Object:0x00007f9f6e97b318>, #<Object:0x00007f9f6e97b2a0>, #<Object:0x00007f9f6e97b228>, #<Object:0x00007f9f6e97b1b0>]
