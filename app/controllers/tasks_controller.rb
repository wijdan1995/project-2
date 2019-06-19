class TasksController < ApplicationController
    before_action :set_project


    def create
        @task = @project.tasks.create(task_params)
        redirect_to project_path(@project)
    end
    
    def destroy
        @task = @project.tasks.find(params[:id])
        @task.destroy
        redirect_to project_path(@project)
    end
     
    def edit
        @project = Project.find(params[:project_id])
        @task = @project.tasks.find(params[:id])
    end

    def update
        @project = Project.find(params[:project_id])
        @task = @project.tasks.find(params[:id])
        # for validates
        if @task.update(task_params)
            
            redirect_to project_path(@project)
        else
            render :edit
        end
        
        
    end
    private

        def set_project
            @project = Project.find(params[:project_id])
        end
        def task_params
            params.require(:task).permit(:content)
        end


end
