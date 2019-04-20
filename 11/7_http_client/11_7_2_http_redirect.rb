require 'uri'
require 'net/http'

def fetch(uri, limit = 6)
  response = Net::HTTP.get_response(uri)

  case response.code.to_i
  when 200
    fetch URI.parse(response['Location']), limit.pred
  when 301,302
    unless linit.zero?
      fetch URI.parse(response['Location']), limit.pred
    else
      response.value
    end
  else
    response.value
  end
end

uri = URI.parse('https://jsonplaceholder.typicode.com/todos')
fetch uri

