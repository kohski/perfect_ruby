require 'rack'
require 'pp'

class RackApplication
  def call(env)
    pp env
    [200,{'Content-type'=>'text/plain'},['hello!']]
  end
end

run RackApplication.new