def keywords_with_options(alice:nil,bob:nil,**others)
  {alice: alice, bob: bob, others: others}
end

# 
keywords_with_options(alice: "ALICE", bob: "BOB", charlie: "CHARLIE", dave: "DAVE")
# => {:alice=>"ALICE",
#     :bob=>"BOB",
#     :others=>{:charlie=>"CHARLIE", :dave=>"DAVE"}}

keywords_with_options(charlie: "CHARLIE", dave: "DAVE",alice: "ALICE", bob: "BOB")
# => {:alice=>"ALICE",
#     :bob=>"BOB",
#     :others=>{:charlie=>"CHARLIE", :dave=>"DAVE"}}

keywords_with_options(alice: "ALICE", bob: "BOB")
# => {:alice=>"ALICE", :bob=>"BOB", :others=>{}}

