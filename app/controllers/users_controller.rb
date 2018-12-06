class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @tasks = Task.where(author: @user.username)
        if current_user.admin?
          @users = User.all
          @tasks_all = Task.all
        end
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
        end
      end
      flash[:success] = "Profile Updated"
      redirect_to root_path
    end
    
    def admin
      @user = current_user
      if @user.admin?
        @users = User.all
        @tasks = Task.all
      else 
        redirect_to '/tasks'
      end
    end
    
    def destroy
      @user = User.find(params[:id])
      @tasks = Task.where(author: @user.username)
      @tasks.destroy_all
      if @user == current_user
        @user.destroy
        redirect_to '/logout'
      else
        @user.destroy
        redirect_to '/tasks'
      end
      flash[:success] = "Account Deleted"
    end
    
    
    private
    def user_params
      params.require(:user).permit(:username, :pointtotal, :admin)
    end

  
end
