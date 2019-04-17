ans = [4,4,2,3].inject(0){|acc,cur|
  acc + cur
}
ans # => 13


# 初期値の省略時は、最初の要素が初期値で2番目から演算スタート
ans = ['b','c','d','e'].inject('a'){|acc,cur|
  acc + cur
}
ans # => "abcde"
ans = ['b','c','d','e'].inject{|acc,cur|
  acc + cur
}
ans # => "bcde"

# sumはinjectの合計特化版。初期値省略時は0
[4,4,2,3].sum # => 13
[].sum # => 0
[].inject(&:+) # => nil

%w(ori gami).sum("") # => "origami"
# %w(ori gami).sum  これはエラー

