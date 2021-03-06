class UsersController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

    def new
     @user = User.new
    end


    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'

         else
            render :new
        end
    end

    def show
     @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation, :zipcode)
    end

end
