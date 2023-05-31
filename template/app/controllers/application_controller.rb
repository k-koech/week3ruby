class ApplicationController < Sinatra::Base
    set :sessions => true

    def authorize
      unless session[:user_id]?
        # If the user is not authenticated, redirect or return an appropriate response
        # message = {:error => "Login to proceed"}
        "message.to_json"
      end
    end


    # get '/' do
    #   '<h2>Rest APIs</h2>'
    # end
  
  
end