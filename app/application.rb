require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new


    if Time.new(2015,11,27,9,30).hour < 12
      resp.write "Good Morning!"
    elsif Time.new(2015,11,27,14,30).hour > 12
      resp.write "Good Afternoon!"
    end
    binding.pry 
    resp.finish
  end

end
