require 'date'

date = Date.new(2017,2,1) # => #<Date: 2017-02-01 ((2457786j,0s,0n),+0s,2299161j)>

date.strftime('%Y/%m/%d') # => "2017/02/01"
date.strftime('%Y/%m/%d %H:%M:%S') # => "2017/02/01 00:00:00"

# dateのsimple validation
Date.valid_date?(2017,2,31) # => false

# うるう年か？
Date.leap?(2004) # => true

#などなど便利メソッド多数！