class Application
 
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item = req.params["item"]
      if @@items.include?(item)
      resp.write "x#{item}"
      
    else
      resp.write "Route not found"
      resp.status = 404
    end
    end
 
    resp.finish
  end
end