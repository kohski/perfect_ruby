class EvalTarget
  @class_class_instance = 10

  class << self
    def class_class_instance
      @class_class_instance
    end
  end
end

EvalTarget.class_class_instance # => 10

EvalTarget.class_eval do
  @class_class_instance = 5
end

EvalTarget.class_class_instance # => 5
