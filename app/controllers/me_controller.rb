class MeController < ApplicationController
    before_action :authenticate 
    def profile
        if current_user.admin?
            @user = User.find(params[:id])
            @users = User.all
            @tasks_all = Task.all
        else 
            @user = current_user
            @tasks = Task.where(author: @user.username)
        end
    end
    
    
end
