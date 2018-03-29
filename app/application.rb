require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    binding.pry


    t = Time.now
    if t.hour < 12
      resp.write "Good Morning!"
    elsif t.hour > 12
      resp.write "Good Afternoon!"
    end
  end

end
