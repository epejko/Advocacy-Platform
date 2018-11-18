class MeController < ApplicationController
    before_action :authenticate 
    def profile
        @tasks = Task.where(author: current_user.username)
    end
    
    
end
