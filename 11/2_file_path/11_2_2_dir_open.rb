require 'pathname'

path = Pathname.new('/etc/resolv.conf')

path.open {|f| p f.gets}

path.read

path.dirname.opendir{|d| p d.entries }