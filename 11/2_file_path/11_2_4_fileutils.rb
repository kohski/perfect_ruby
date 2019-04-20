require 'fileutils'
require 'pathname'

# FileUtils.cp_r 'pathname_sample_dir','hogehoge'

# %w(one two three).each do |str|
#   dir = Pathname.new(str)
#   dir.mkdir
# end

# FileUtils.cp_r %w(one two three), 'dest/dir'

# FileUtils.mkdir 'foo'
# FileUtils.mkdir 'foo/bar'
# FileUtils.mkdir 'foo/bar/baz'
# FileUtils.mkdir_p 'foo2/bar/baz'
FileUtils.mv 'foo', 'foo2'