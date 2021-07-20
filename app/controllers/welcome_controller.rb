class WelcomeController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:home]

    def home
     render :home
    end



end