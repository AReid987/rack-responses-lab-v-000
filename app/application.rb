class Application

  def call(env)
    resp = Rack::Response.new



    if Time < 12
      resp.write "Good Morning!"
    elsif Time > 12
      resp.write "Good Afternoon!"
    end
  end

end
