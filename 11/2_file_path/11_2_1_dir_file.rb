require 'pathname'

# Pathnameクラスの初期化
Pathname.new('/tmp') # => #<Pathname:/tmp>
Pathname('/tmp') # => #<Pathname:/tmp>

# homeディレクトリに架空のファイル/foo.txtを保存した体で
home = Pathname.new('~') # => #<Pathname:~>
foo = home.join('foo.txt') # => #<Pathname:~/foo.txt>
foo.dirname # => #<Pathname:~>
foo.basename # => #<Pathname:foo.txt>
foo.expand_path # => #<Pathname:/Users/kosukekimura/foo.txt>
foo.expand_path.parent # => #<Pathname:/Users/kosukekimura>
foo.expand_path.parent.parent # => #<Pathname:/Users>

foo.to_path # => "~/foo.txt"
foo.to_s # => "~/foo.txt"

 # file objectと似た様なやつ
tmp = Pathname('/tmp') # => #<Pathname:/tmp>

tmp.atime # => 2019-04-19 21:07:26 +0900
tmp.ctime # => 2019-04-19 21:22:32 +0900
tmp.mtime # => 2019-04-19 21:22:32 +0900

tmp.owned? # => false
tmp.executable? # => true
tmp.readable? # => true
tmp.writable? # => true

tmp.ftype # => "link"
tmp.file? # => false
tmp.directory? # => true
tmp.pipe? # => false
tmp.socket? # => false
tmp.symlink? # => true

tmp.size # => 1024
tmp.zero? # => false

tmp.stat # => #<File::Stat dev=0x1000005, ino=12885597502, mode=041777, nlink=32, uid=0, gid=0, rdev=0x0, size=1024, blksize=4096, blocks=0, atime=2019-04-19 21:07:26 +0900, mtime=2019-04-19 21:22:32 +0900, ctime=2019-04-19 21:22:32 +0900, birthtime=2018-08-18 06:54:19 +0900>
tmp.lstat # => #<File::Stat dev=0x1000005, ino=12885598240, mode=0120755, nlink=1, uid=0, gid=0, rdev=0x0, size=11, blksize=4096, blocks=0, atime=2019-02-11 22:59:24 +0900, mtime=2019-02-11 22:59:24 +0900, ctime=2019-02-11 23:01:11 +0900, birthtime=2019-02-11 22:59:24 +0900>

tmp.relative? # => false


dir = tmp.join('bar') # !> assigned but unused variable - dir
# dir.mkdir

tmp2 = Pathname.new('~')
dir2 = tmp2.join('hogehogepathpath') # => #<Pathname:~/hogehogepathpath>
dir2.mkdir 

# ~> -:52:in `mkdir': No such file or directory @ dir_s_mkdir - ~/hogehogepathpath (Errno::ENOENT)
# ~> 	from -:52:in `mkdir'
# ~> 	from -:52:in `<main>'