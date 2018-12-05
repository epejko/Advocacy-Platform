class UsersController < ApplicationController
    
    def show
      @user = User.find(params[:id])
    end
    
    def edit
      if current_user.admin?
        @user = User.find(params[:id])
      else 
        @user = current_user
      end
    end
  
    def update
      if current_user.admin?
        @user = User.find(params[:id])
      else 
        @user = current_user
      end
      begin @user.update_attributes(user_params) 
      rescue ActiveRecord::RecordNotUnique => e
        if e
          flash[:error] = "Username has already been taken"
          render 'edit_user_path'
        else 
          @user.save!
          redirect_to '/tasks'
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
    
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:success] = "Account Deleted"
      redirect_to '/tasks'
    end
    
    
    private
    def user_params
      params.require(:user).permit(:username, :pointtotal, :admin)
    end

  
end
