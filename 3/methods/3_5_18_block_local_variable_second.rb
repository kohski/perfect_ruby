# 同名のトップレベルとブロック内のローカル変数は共有
# 同名のブロック引数（ブロックローカル変数）とトップレベルのローカル引数はスコープが分かれる

someone = 'Dave'
people = []
%w(Alice Bob Dave Steve Matheu).each do |someone| 
  people << someone
end

people # => ["Alice", "Bob", "Dave", "Steve", "Matheu"]
someone # => "Dave"