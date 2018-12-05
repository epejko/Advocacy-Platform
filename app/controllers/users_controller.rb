class UsersController < ApplicationController
    
    def show
      @user = User.find(params[:id])
    end
    
    def edit
      @user = current_user
    end
  
    def update
      @user = current_user
      begin @user.update_attributes(user_params) 
      rescue ActiveRecord::RecordNotUnique => e
        if e
          render 'edit'
          flash[:error] = "Username has already been taken"
        else 
          @user.save!
          redirect_to :me
        end
      end
    end
    
    def admin
      @user = current_user
      if @user.admin?
        @users = User.all
      else 
        redirect_to '/tasks'
      end
    end
    
    private
    def user_params
      params.require(:user).permit(:username, :pointtotal)
    end

  
end
