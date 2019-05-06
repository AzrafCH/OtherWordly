class UsersController < ApplicationController

    def home 

    end 
    
    def new 
        @user = User.new 
    end 

    def show
        return redirect_to :root unless logged_in?
    end 

    
end
