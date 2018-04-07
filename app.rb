require 'pry'
class App

  attr_reader :routes

  def initialize(&block)
    @routes = RouteTable.new(block)
  end

  def call(env)
    @request = Rack::Request.new(env)
    [200, { "Content-Type" => 'text/plain' }, [instance_eval(&routes)]]
  end

end

class RouteTable
  def initialize(route, block)

  end

  def get(path, &block)
    if @request.path == path
    block.call
    else
    end
  end
end
