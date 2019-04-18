def proc_factory
  Proc.new
end

# block_proc = proc_factory { |a| (a..0).inject(0){|a,b| a + b}}
# block_proc.call(10) # => 0

block_proc = proc_factory{'block proc'}
block_proc.call # => "block proc"

# proc newしなくてもKernel.#procでもOK
proc_obj = proc {|a,b| (a..b).inject(0){ a + b }} # => #<Proc:0x00007fa4e1033530@-:12>
proc_obj.call(1,3) # => 4