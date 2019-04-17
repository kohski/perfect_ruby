stat = File.open('./model/foo',&:stat)
puts stat.ftype
puts stat.file?
puts stat.directory?
puts stat.symlink?
puts stat.pipe?
puts stat.socket?

