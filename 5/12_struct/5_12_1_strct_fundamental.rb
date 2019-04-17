Human = Struct.new(:age, :gender)

human = Human.new(10, 'male')
human.age # => 10
human.gender # => "male"

human.age = 20
human[:age] # => 20
human.members # => [:age, :gender]

