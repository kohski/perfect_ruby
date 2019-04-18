def proc_return
  Proc.new{ return 1; puts :unreachable }.call # !> statement not reached
  :unreachable
end

proc_return # => 1
# Proc.new{ return 1; puts :unreachable }.call # => 

lambda {return 1;puts :unreachable}.call # => 1 # !> statement not reached

def lambda_return
  lambda {return 1;puts :unreachable}.call # => 1 # !> statement not reached
  :reachable
end

lambda_return # => :reachables