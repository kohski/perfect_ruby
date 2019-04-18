str = 'from toplevel'

top_level_proc = Proc.new{ str }
top_level_proc.call # => "from toplevel"

str += ' append strings'
top_level_proc.call # => "from toplevel append strings"