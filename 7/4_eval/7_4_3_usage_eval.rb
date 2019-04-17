# class LoggingInstanceVariable
#   attr_reader :first_val, :before_first_val

#   def first_val=(val) # !> instance variable @third_val not initialized
#     @before_first_val = first_val
#     @first_val = val
#   end
# end

# obj = LoggingInstanceVariable.new

# obj.first_val # => nil
# obj.before_first_val # => nil
# obj.first_val = 2

# obj.first_val # => 2
# obj.before_first_val # => nil

class LoggingInstanceVariable
  logging_instance_val_names = %w(first_val second_val third_val)

  logging_instance_val_names.each do |val_name|
    eval <<-END_OF_DEF 
      attr_reader :#{val_name}, :before_#{val_name}

      def #{val_name}=(val)
        @before_#{val_name} = @#{val_name}
        @#{val_name} = val
      end
    END_OF_DEF
  end
end

obj = LoggingInstanceVariable.new

obj.first_val = 1
obj.first_val = 2

obj.first_val # => 2
obj.before_first_val # => 1

obj.third_val = 4
obj.third_val = 5

obj.third_val # => 5
obj.before_third_val # => 4

