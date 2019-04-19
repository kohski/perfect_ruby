if ::Object.method(:const_defined?).arity == 1
  def self.const_defined_in?(modul,constant)
    modul.const_defined?(constant)
  end
else
  def self.const_defined_in?(modul,constant)
    modul.const_defined?(constant,false)
  end
end