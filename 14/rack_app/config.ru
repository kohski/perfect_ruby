require 'rack'

class RackApplication
  def call(env)
    [200,{'Content-type'=>'text/plain'},['hello!\n']]
  end
end

run RackApplication.new