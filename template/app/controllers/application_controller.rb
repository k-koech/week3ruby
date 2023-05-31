class ApplicationController < Sinatra::Base
    set :sessions => true

    use Rack::Session::Cookie, 
      key: 'myapp_session',
      expire_after: 3600, # 1 hour in seconds
      secret: 'myapp_secret_key'


    def authorize
   
      if session[:user_id].blank?
        halt 401, {:error => "Login to perfom the operation"}.to_json # Return a 401 Unauthorized status code or any other response you prefer
      end

      @current_user = User.find_by(id: session[:user_id] )
    end


    get '/' do
      '<h2>Rest APIs</h2>'
    end
  
  
end