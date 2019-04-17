class QuotableString < String
  def quote
    "'#{self}'"
  end
end

quotable_string = QuotableString.new 'quotable_string'
quotable_string.quote # => "'quotable_string'"