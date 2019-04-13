people = %w!alice bob carol!

person_0 = people[0] # => "alice"
person_9 = people[9] # => nil

person_0&.capitalize # => "Alice"s
person_0.capitalize # => "Alice"

person_9&.capitalize # => nil
person_9.capitalize  # => 
# ~> -:10:in `<main>': undefined method `capitalize' for nil:NilClass (NoMethodError)