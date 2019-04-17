hash = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
}

ans = hash.each do |key,value|
  "#{key}: #{value}"
end 
ans # => {:one=>1, :two=>2, :three=>3, :four=>4, :five=>5}

hash.select{|key,val| val.odd?} # => {:one=>1, :three=>3, :five=>5}
hash.delete(:one) # => 1
hash # => {:two=>2, :three=>3, :four=>4, :five=>5}

# transform_values
names = {a: 'alice', b: 'bob', c:'carol'}
names.transform_values{|name| name.capitalize} # => {:a=>"Alice", :b=>"Bob", :c=>"Carol"}

# hashのmerge
# キー重複時はmergeの引数の方が適用される

a = {a: 1, b: 2}
b = {a: 3, c: 4}
a.merge(b) # => {:a=>3, :b=>2, :c=>4}


#key,valueのいれかえ
hash = {a: 10, b:20, c:30}
hash.invert # => {10=>:a, 20=>:b, 30=>:c}

#値確認nilだと区別つかない場合もなのでhas_key?/has_value?が適切
hash = {a: 10, b:20, c:30}
hash.has_key?(:a) # => true
hash.has_key?(:d) # => false
hash.key?(:a) # => true
# ちゃんとhashだけフックしている模様
hash.member?(:a) # => true
hash.member?(10) # => false
# こちらも
hash.include?(:a) # => true
hash.include?(10) # => false
# valueはこちら
hash.has_value?(10) # => true
hash.value?(10) # => true

# keyと値の取得
hash = {a: 10, b:20, c:30}

hash.keys # => [:a, :b, :c]
hash.key(20) # => :b

hash.values # => [10, 20, 30]
hash.values_at(:a,:b) # => [10, 20]

# 多重hashにいい感じにきくhash.dig
hash = {
  a: {
    a1:'aa',
    a2:{
      aa1:'aaa'
    }
  },
  b:'emittion',
  c:'emittion'
}
# 実在しないkeyがあると例外が出る
# hash[:a][:a3] #=>

hash.dig(:a, :a2, :aa1) # => "aaa"
hash.dig(:a, :a3) # => nil

# hash instanceにdefault値設定
hash = Hash.new('default string')
hash[:foo] # => "default string"
hash[:bar] # => "default string"

#blockわたし

hash = Hash.new {|hash, key| Time.now }
hash[:foo] # => 2019-04-15 12:34:12 +0900