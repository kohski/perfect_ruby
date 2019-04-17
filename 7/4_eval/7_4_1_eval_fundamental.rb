eval 'p self'
object = Object.new
object.instance_eval{ p self }
object.class.class_eval { p self }
Kernel.module_eval { p self }
# >> main
# >> #<Object:0x00007fc42c020b28>
# >> Object
# >> Kernel