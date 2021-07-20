class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in, only: [:login, :create, :google_omniauth]

  
  
  
    def login

    end
  
    def create
      user = User.find_by_username(params[:username])
      
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/'
       else
        flash[:errors] = ["Invalid Username or Password!"]
        redirect_to login_path
      end
    end
  
  
    def logout
      session.clear
      redirect_to login_path
    end

   
    def google_omniauth
      user_info = request.env['omniauth.auth']["info"]
      user = User.find_or_create_from_google(user_info)

      if user
        session[:user_id] = user.id
        redirect_to user
       else
        flash[:errors] = user.errors.full_messages
        redirect_to login_path
      end
    end
end
