require 'set'

(1..5).to_set # => #<Set: {1, 2, 3, 4, 5}>

Set.new(%w(tim timtim yoko)) # => #<Set: {"tim", "timtim", "yoko"}>

sets = Set.new(%w(tim timtim yoko)){|name|
  name.upcase
} 
sets # => #<Set: {"TIM", "TIMTIM", "YOKO"}>

Set[1,2,3,4] # => #<Set: {1, 2, 3, 4}>

sets = Set.new(1..5) # => #<Set: {1, 2, 3, 4, 5}>
sets.length # => 5
sets.include?(3) # => true
sets.map{|elm| elm * 2} # => [2, 4, 6, 8, 10]
sets.select{|elm| elm.even? } # => [2, 4]
sets.minmax # => [1, 5]

sets << 10 # => #<Set: {1, 2, 3, 4, 5, 10}>
# 既存の値は変化なし
sets << 3 # => #<Set: {1, 2, 3, 4, 5, 10}>
# 追加されたかどうか知りたいなら、add?を使用。重複してたらnilが返る
sets.add? 3  # => nil

sets.delete(10) # => #<Set: {1, 2, 3, 4, 5}>
sets.delete?(15) # => nil

sets.clear  
sets.empty? # => true



# -------------------

set = Set[1,3,5]
set.merge(Set[5,6,7,8]) # => #<Set: {1, 3, 5, 6, 7, 8}>
set.merge(%w(a b c)) # => #<Set: {1, 3, 5, 6, 7, 8, "a", "b", "c"}>

set.subtract(%w(a b c)) # => #<Set: {1, 3, 5, 6, 7, 8}>
 
set.delete_if{|n| n.even?} # => #<Set: {1, 3, 5, 7}>
