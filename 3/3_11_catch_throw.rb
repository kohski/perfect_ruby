catch :triple_loop do
  loop do
    puts "one"
    loop do
      puts "two"
      loop do
        puts "three"
        throw :triple_loop
        puts "not executed"
      end
      puts "not executed"
    end
    puts "not executed"
  end
end

# throwしなければ、threeが無限ループしてるよ。
# >> one
# >> two
# >> three
