require 'Time'

class Application

  def call(env)
    resp = Rack::Response.new
    Time.now.hour < 12 ? result = 'Good Morning' : result = 'Good Afternoon'
    resp.write result
    resp.finish
  end

end