proc1 = Proc.new{|n| n.upcase }
proc2 = :upcase.to_proc

proc1.call("timtim") # => "TIMTIM"
proc2.call("timtim") # => "TIMTIM"

