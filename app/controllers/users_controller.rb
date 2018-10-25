class UsersController < ApplicationController
    #testtest
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            redirect_to user_path(@user)
            flash[:success] = "New user " + @user.email + " created"
        else
            flash[:error] = @user.errors.full_messages.to_sentence
            render 'new'
        end
    end

    def log_in(user)
      # code here
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
        params.require(:user).permit(:last_name, :email, :username, :pointtotal, :organization, :password, :password_confirmation)
    end
end
