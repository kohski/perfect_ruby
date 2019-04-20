require 'webrick'
require 'webrick/httpproxy'

proxy = WEBrick::HTTPProxyServer.new(
  :BindAddress => '127.0.0.1',
  :Port => 8080,
  :ProxyContentHandler =>
    ->(req,res){
      puts res.body.scan(/<title>(.*)<\/title>/im).join rescue nil
    }
)

Signal.trap('INT') do
  proxy.shutdown
end

proxy.start