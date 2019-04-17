array = ['aaaaa','bbb','cc','dddddd']

array.min_by{|n| n.length} # => "cc"
#複数該当時は返り値不定
#block演算必要な場合はminmax_byでOK!
ans = array.max_by{|n| n.length} # => "dddddd"
array.minmax_by {|n| n.length } # => ["cc", "dddddd"]


#sortメソッド
people = %w(Bob Charlie Edy Alice Dave)
people.sort # => ["Alice", "Bob", "Charlie", "Dave", "Edy"]
people.sort_by {|n| n.length } # => ["Bob", "Edy", "Dave", "Alice", "Charlie"]

