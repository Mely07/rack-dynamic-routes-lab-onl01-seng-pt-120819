class Application
 
 @@item = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/item"
      item = req.params["item"]
      if @@items.include?(item)
      resp.write "#{item}"
    end
      
    else
      resp.write "Route not found"
      resp.status = 404
    end
    end
 
    resp.finish
  end
end