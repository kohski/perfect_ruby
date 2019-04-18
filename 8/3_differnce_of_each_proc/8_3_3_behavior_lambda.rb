args_proc = Proc.new{|x,y|[x,y] }
args_proc[1,2] # => [1, 2]
args_proc[1,2,3] # => [1, 2]
args_proc[1] # => [1, nil]
args_proc[[1,2]] # => [1, 2]

args_lambda = ->(x,y){[x,y]}
args_lambda[1,2] # => [1, 2]
# args_lambda[1,2,3] # => 
# args_lambda[1] # => 
# args_lambda[[1,2] # => 

#引数による挙動が違うので、Proc#lambda?が重要になってくる

proc {}.lambda? # => false
lambda {}.lambda? # => true
->{}.lambda? # => true

1.method(:+).to_proc.lambda? # => true