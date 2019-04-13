greeter = Proc.new{|name| "Hello,#{name}"}
greeter.call("timtim") # => "Hello,timtim"

format = Proc.new{|name|
  name = name.capitalize
  "Hello,#{name}"
}

format.call("alice") # => "Hello,Alice"

foramt2 = ->(name){
  name = name.upcase
  "Good evening, #{name}"
}

foramt2.call("Cathy") # => "Good evening, CATHY"