weather = "rainy"

%q(it's #{weather}) # => "it's \#{weather}"
%(it's #{weather}) # => "it's rainy"
%Q(it's #{weather}) # => "it's rainy"

%i!timtim kimkim humhum! # => [:timtim, :kimkim, :humhum]
%w!timtim#{weather} kimkim humhum! # => ["timtim\#{weather}", "kimkim", "humhum"]
%W!timtim#{weather} kimkim humhum! # => ["timtimrainy", "kimkim", "humhum"]

#いろんな記述がOK
%Q( it's #{weather} ) # => " it's rainy "
%Q{ it's #{weather} } # => " it's rainy "
%Q< it's #{weather} > # => " it's rainy "
%Q[ it's #{weather} ] # => " it's rainy "
%Q| it's #{weather} | # => " it's rainy "
%Q! it's #{weather} ! # => " it's rainy "
%Q* it's #{weather} * # => " it's rainy "
