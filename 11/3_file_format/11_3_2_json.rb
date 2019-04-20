require 'json'

data = [1,2.0,{'key'=> 'value'},nil,true,false]

dump = JSON.dump(data) # => "[1,2.0,{\"key\":\"value\"},null,true,false]"

File.write 'test.json', dump