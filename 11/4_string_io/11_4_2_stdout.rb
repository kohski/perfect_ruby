require 'stringio'

def capture_stdout
  captured = StringIO.new
  original = $stdout
  $stdout = captured

  yield

  $stdout = original
  captured.string
end

capture_string = capture_stdout {puts "hi, STDOUT!!"}
p capture_string
