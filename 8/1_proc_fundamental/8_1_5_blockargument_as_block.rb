def convert_proc(&block)
  block
end

proc_obj = convert_proc {'I am a yoko lover'}
proc_obj.call # => "I am a yoko lover"


def yield_proc
  yield
end
proc_obj = Proc.new{ 1 }
yield_proc &proc_obj # => 1 # !> `&' interpreted as argument prefix