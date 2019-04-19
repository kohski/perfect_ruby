class HaveMethod
  def has_method
    'has_method'
  end

  private

  def has_method_private
    'private!'
  end
end

class NotHaveMethod
end

have_method = HaveMethod.new
not_have_method = NotHaveMethod.new 

have_method.respond_to? :has_method # => true
# defaultだとprivateには引っかからないけど、第二引数trueでprivateメソッドも参照する
have_method.respond_to? :has_method_private # => false
have_method.respond_to? :has_method_private,true # => true
have_method.respond_to? :has_method_private_second,true # => false
not_have_method.respond_to? :has_method # => false

