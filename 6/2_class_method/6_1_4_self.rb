class Klass
  # self # => Klass
  @class_instance_vsalue = :class_instance_vsalue 

  def self.class_instance_vsalue
    @class_instance_vsalue
  end
end

Klass.class_instance_vsalue # => :class_instance_vsalue
