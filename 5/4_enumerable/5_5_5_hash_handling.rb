# each_with_object
ans = %w(Alice Bob Charlie).each_with_object({}) {|name,result|
  result[name] = name.length
}
ans # => {"Alice"=>5, "Bob"=>3, "Charlie"=>7}

ans = %i(Kohsuke Yoko Yuki).each_with_object({}) {|name,result|
  result[name] = name.length
}
ans # => {:Kohsuke=>7, :Yoko=>4, :Yuki=>4}

# こんなこともできる。（まあ、.to_hで一発やけど）
hash = [[:timtim,3],[:yoko,5],[:hus,5]]
ans = hash.each_with_object({tomomi: 10}){|name,result|
  result[name[0]] = name[1]
}
ans # => {:tomomi=>10, :timtim=>3, :yoko=>5, :hus=>5}

# group_by
array = ['1',2,3.0,[4]]
array.group_by{|n| n.class } # => {String=>["1"], Integer=>[2], Float=>[3.0], Array=>[[4]]}

array = [1,2,3,4,5,6]
array.group_by{|n| n%3 } # => {1=>[1, 4], 2=>[2, 5], 0=>[3, 6]}

# partition
array = [1,2,3,4,5]
array.partition{|n| n.even?} # => [[2, 4], [1, 3, 5]]

array_2 = ['1',2,3,'4',5]
array_2.partition{|n| n.class == Integer } # => [[2, 3, 5], ["1", "4"]]

#slice_before
lines = [timtim,kimkim,tumtum,oipoip]
lines.slice_before(',').to_a # => 
