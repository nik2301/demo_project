class HomeController < ApplicationController
    def index
        @users = User.all
    end
    def edit
        @user = User.find(params[:id])
    end 
    def basic

    end
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @users = User.find(params[:id])
    
        if @user.update(user_params)
            redirect_to @user
        else
            render :edit
        end
    end
end
