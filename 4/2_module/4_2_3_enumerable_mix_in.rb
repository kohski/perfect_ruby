class FriendList
  include Enumerable

  def initialize(*friends)
    @friends = friends
  end

  def each
    for v in @friends
      yield v
    end
  end
end

friends = FriendList.new('Alice','Bob','Charlie')
friends.map{|v| v + "san" } # => ["Alicesan", "Bobsan", "Charliesan"]
friends.find{|v| /b/ === v } # => "Bob"