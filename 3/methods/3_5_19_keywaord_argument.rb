# alice: 省略不可のキーワード引数/省略不可のキーワード引数
# bob: nilなど初期値を与えておけば省略可能になる
def keyword(alice: , bob:)
  { alice: alice, bob: bob }
end

keyword(alice: 'ALICE', bob: 'BOB') # => {:alice=>"ALICE", :bob=>"BOB"}
keyword(alice: 'ALICE') #=> ArgumentErrorを吐く
keyword(charley: "CHARLEY") # => 未知の引数も同様

