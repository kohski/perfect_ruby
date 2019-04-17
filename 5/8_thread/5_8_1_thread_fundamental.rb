files = %w(.xinitrc .zshrc .vimrc)
threads = files.map{|file|
  Thread.fork{
    num = File.readlines(file).length
    "#{file}: #{num}"
  }
}
threads.map(&:value)