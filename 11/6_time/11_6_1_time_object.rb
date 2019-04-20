require 'time'

# いろんなフォーマットに対応
time = Time.parse('2018-02-01 16:40') # => 2018-02-01 16:40:00 +0900

time.iso8601 # => "2018-02-01T16:40:00+09:00"
time.httpdate # => "Thu, 01 Feb 2018 07:40:00 GMT"
time.rfc2822 # => "Thu, 01 Feb 2018 16:40:00 +0900"

