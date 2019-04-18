proc_obj = Proc.new {|a| a.downto(1).to_a.inject(1){|acc,cur| acc *= cur }} # => #<Proc:0x00007fcf6012c4d8@-:1>
proc_obj.call(10) # => 3628800