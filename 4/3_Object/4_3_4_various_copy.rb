original = Object.new

original.object_id # => 70306849437860
original.freeze 
original.frozen? # => true

copy_dup = original.dup
copy_dup.object_id # => 70306849436720
copy_dup.frozen? # => false

copy_clone = original.clone
copy_clone.object_id # => 70306849435640
copy_clone.frozen? # => true
