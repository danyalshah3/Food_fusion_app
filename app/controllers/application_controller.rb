class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    before_action :redirect_if_not_logged_in

    


    def logged_in?
        !!session[:user_id]
      end

    def current_user
      logged_in? && User.find(session[:user_id])
    end

    def redirect_if_not_logged_in
        redirect_to login_path if !current_user
      end
        

      
end
