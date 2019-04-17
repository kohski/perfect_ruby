class AttrClass
  def initialize
    @attr = "attr"
  end

  def add_reader(instance_val_name)
    eval <<-END_OF_INPUT
      def #{instance_val_name}
        @#{instance_val_name}
      end
    END_OF_INPUT
  end

  def add_writter(instance_val_name)
    eval <<-END_OF_INPUT
      def #{instance_val_name}=(val)
        @#{instance_val_name}=val
      end
    END_OF_INPUT
  end
end

attr_obj = AttrClass.new # => #<AttrClass:0x00007fecf412e308 @attr="attr">

attr_obj.respond_to?("attr") # => false

attr_obj.add_reader "attr"
attr_obj.respond_to?("attr") # => true
attr_obj.attr # => "attr"

attr_obj.respond_to?("attr=") # => false

attr_obj.add_writter "attr"
attr_obj.respond_to?("attr=") # => true

