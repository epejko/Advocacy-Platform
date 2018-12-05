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
          flash[:error] = "Username has already been taken"
          render 'edit'
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
    
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:success] = "Account Deleted"
      redirect_to '/tasks'
    end
    
    private
    def user_params
      params.require(:user).permit(:username, :pointtotal)
    end

  
end
