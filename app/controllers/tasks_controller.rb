class TasksController < ApplicationController
    
    def index
        @tasks = Task.all
    end
    
    def new
        @task = Task.new
    end
    
    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to '/tasks'
        else
            render 'new'
        end
    end
    
    def destroy
        Task.find(params[:id]).destroy
        
        redirect_to '/tasks'
    end
    
    def view
        @task = Task.find(params[:id])
    end
    
    private 
    def task_params
        params.require(:task).permit(:subject, :category, :points, :user)
    end
    
end
