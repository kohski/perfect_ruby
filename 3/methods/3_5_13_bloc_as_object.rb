people = %w(alice yoko fuuki yuuki) 
block  = Proc.new{|name| puts name.upcase }

people.each &block   # !> `&' interpreted as argument prefix
# >> ALICE
# >> YOKO
# >> FUUKI
# >> YUUKI