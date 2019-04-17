module PrependModule
  def embeded_module
    :prepend_module
  end
end

module IncludeModule
  def embeded_module
    :include_module
  end
end


class PrependClass
  prepend PrependModule
  include IncludeModule
end

klass = PrependClass.new
klass.embeded_module # => :prepend_module