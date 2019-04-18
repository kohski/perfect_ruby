def create_proc
  str = 'from create_proc'
  Proc.new { str }
end

proc_obj = create_proc

str = 'from toplevel' # !> assigned but unused variable - str
proc_obj.call # => "from create_proc"