add = Proc.new{|x,y| x + y } # => #<Proc:0x00007f97b390b4e0@-:1>
inc = add.curry.(1) # => #<Proc:0x00007f97b390aec8>

inc.(2) # => 3

append_prefix_atmark = add.curry.("@") # => #<Proc:0x00007f97b390a428>
append_prefix_atmark.("takkanm") # => "@takkanm"

# https://qiita.com/eduidl/items/07dab979634f300c9fff
# 関数型言語で必要らしいで！