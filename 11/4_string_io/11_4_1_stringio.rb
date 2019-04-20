require 'stringio'

def read_upcase(io)
  io.read.upcase
end

io = open('|uname')
stringio = stringIO.new('alice')

p read_upcase(io) # => 
p read_upcase(stringio)
# ~> -:8:in `<main>': undefined local variable or method `stringIO' for main:Object (NameError)
# ~> Did you mean?  String