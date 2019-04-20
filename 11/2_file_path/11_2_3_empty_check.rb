require 'pathname'

dir = Pathname('pathname_sample_dir')
dir.mkdir
dir.empty? # => 

file = dir.join('file')
file.write('')

file.empty? # =>
dir.empty? # =>

file.write('hi')
file.empty? # =>
