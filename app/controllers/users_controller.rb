class UsersController < ApplicationController
    
    def edit
      @user = current_user
    end
  
    def update
      @user = current_user
      if @user.update_attributes(user_params)
          @user.save
          redirect_to :me
      else 
          render 'edit'
      end
    end
    
    private
    def user_params
      params.require(:user).permit(:username)
    end

  
end
