require 'uri'
require 'net/http'
DEFAULT_PORT = 80
DEFAULT_PORT.freeze

uri = URI.parse('https://jsonplaceholder.typicode.com/todos')
Net::HTTP.start uri.host, DEFAULT_PORT  do |http|
  response = http.get(uri.path)
  p response
  case response.code.to_i
  when 200
    puts response.body
  else
    puts %(#{response.code} #{response.message})
  end
end


uri = URI.parse('https://jsonplaceholder.typicode.com/todos')
print Net::HTTP.get(uri)
