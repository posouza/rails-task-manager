class TaskManagersController < ApplicationController
  before_action :set_task_manager, only: [:show, :edit, :update, :destroy]

  def index
    @task_managers = TaskManager.all
  end

  def show
  end

  def new
    @task_manager = TaskManager.new
  end

  def create
    task_manager = TaskManager.new(task_manager_params)
    task_manager.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to task_manager_path(task_manager)
  end

  def edit
  end

  def update
    @task_manager.update(task_manager_params)
    redirect_to task_manager_path(@task_manager)
  end

  def destroy
    @task_manager.destroy
   redirect_to task_managers_path
  end

  private

  def set_task_manager
    @task_manager = TaskManager.find(params[:id])
  end


  def task_manager_params
    params.require(:task_manager).permit(:description, :deadline)
  end
end
