class Application
 
 @@item = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/item"
      if @@items.include?(item)
      resp.write "#{item}"
      
    else
      resp.write "Route not found"
      resp.status = 404
    end
    end
 
    resp.finish
  end
end