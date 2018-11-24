class TasksController < ApplicationController
    
    def index
        @tasks = Task.all.reverse
    end
    
    def new
        if user_signed_in?
            render 'tasks/new'
        else
            flash[:error] = "You must be logged in to submit a task"
            redirect_to '/tasks'
        end
        @task = Task.new
    end
    
    def create
        @task = Task.new(task_params)
        if @task.save
            total_points = @task.points + current_user.pointtotal
            current_user.update_attribute(:pointtotal, total_points)
            redirect_to '/tasks'
        else
            render 'new'
        end
    end
    
    def destroy
        @task = Task.find(params[:id])
        total_points = current_user.pointtotal - @task.points
        current_user.update_attribute(:pointtotal, total_points)
        @task.destroy
        redirect_to '/tasks'
    end
    
    def view
        @task = Task.find(params[:id])
    end
    
    private 
    def task_params
        params.require(:task).permit(:subject, :category, :points, :author, :user_id, :description)
    end
    
end
