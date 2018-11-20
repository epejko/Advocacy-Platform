class UsersController < ApplicationController
    
    def show
      @user = User.find(params[:id])
    end
    
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
      params.require(:user).permit(:username, :pointtotal)
    end

  
end
