class ReposndAtMethodMissing
  def method_missing(name, *args)
    if name == :respond_at_method_missing
      'respond_at_method_missing'
    else
      super
    end
  end
end

respond_at_method_missing = ReposndAtMethodMissing.new
respond_at_method_missing.respond_at_method_missing # => "respond_at_method_missing"

respond_at_method_missing.respond_to? :respond_at_method_missing # => false

class ReaspondAtMethodMissing
  def respond_to_missing?(method_name, include_private = false)
    if method_name.sym == :respond_at_method_missing
      true
    else
      super
    end
  end
end

respond_at_method_missing.respond_to? :respond_at_method_missing # => false