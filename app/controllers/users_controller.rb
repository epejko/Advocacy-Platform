class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to '/users'
        else
            render 'new'
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to '/users'
    end
    
    def view
        @user = User.find(params[:id])
    end
    
    private 
    def user_params
        pointtotal = 0
        params.require(:first_name).require(:last_name).require(:email).require(:username).require(:pointtotal).permit(:organization)
        end
end
