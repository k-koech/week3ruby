class SessionController < ApplicationController
    # skip_before_action :authorize, only: [:login]
  
    post "/users/login" do
        username = params[:username]
            user = User.find_by(username: username )

            puts "user #{user}"
            if(user && user.authenticate(params[:password]))
                session[:user_id] = user.id

                message =  { :success => "Logged in successfully"}
                message.to_json
      
            else
                status 401
                message = {:error => "Wrong username or password",  :status=>401}
                message.to_json
                
            end
     end
  
  
     #logout
    post "/users/logout" do
        session.delete :user_id
        status 204
        message =  { :success => "Logged out successfully"}
        message.to_json
     end
  end