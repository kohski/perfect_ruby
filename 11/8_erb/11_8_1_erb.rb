require 'erb'

name = 'Alice' # !> assigned but unused variable - name
erb = ERB.new('hello, <%= name %>')
erb.result(binding) # => "hello, Alice"