class MeController < ApplicationController
    before_action :authenticate 
    def profile
        @user = current_user
        @tasks = Task.where(author: current_user.username)
    end
    
    
end
