require 'rack'
require 'rack/server'

class DatabaseServer
  def self.call(env)
    [200, {}, ['Hello World']]
  end
end

#Rack::Server.start(app: DatabaseServer)
