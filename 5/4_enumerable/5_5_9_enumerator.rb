[].each # => #<Enumerator: []:each>
{}.each # => #<Enumerator: {}:each>
[1,2,3].to_enum # => #<Enumerator: [1, 2, 3]:each>
'Alice'.each_char # => #<Enumerator: "Alice":each_char>
'Alice'.enum_for(:each_char) # => #<Enumerator: "Alice":each_char>

#Enumeratorクラスにはwith_indexが定義されている
%w(Alice Bob Charlie).each # => #<Enumerator: ["Alice", "Bob", "Charlie"]:each>
ans =[]
%w(Alice Bob Charlie).each.with_index do |name,idx|
  ans << "#{idx}: #{name}"
end
ans # => ["0: Alice", "1: Bob", "2: Charlie"]

enum = [4,4,2,3].to_enum

enum.rewind # => #<Enumerator: [4, 4, 2, 3]:each>

enum.next # => 4
enum.next # => 4
enum.next # => 2
enum.next # => 3
# enum.next # => 3 StopIteration errorが発生
# 補足方法はrescueでもいいけど、Kernel#loopでも補足可能

enum = [4,4,2,3].to_enum
ans = []
loop do
  ans << enum.next
end 
ans # => [4, 4, 2, 3]

#2つの配列を同時にまわすのは実はきつい
people = %w(alice bob dave).to_enum
ages = [10,30,20].to_enum

ans =loop do
  person = people.next
  age = ages.next

  "#{person}(#{age})"
end
ans # => ["alice", "bob", "dave"]

