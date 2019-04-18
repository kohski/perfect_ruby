sum_proc = Proc.new{|a,b| (a..b).inject(0){|a,b| a + b} }
sum_proc === [5,1] # => 0
