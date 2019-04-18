lambda_obj = lambda{|a| (0..a).filter{|num| num % 2 == 0}}
lambda_obj.class # => Proc
lambda_obj.call(10) # => [0, 2, 4, 6, 8, 10]

inc = ->(x){ (0..x).filter{|num| num % 2 == 1 } }
inc.class # => Proc
inc.call(6) # => [1, 3, 5]