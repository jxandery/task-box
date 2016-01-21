class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def index
    @lists = TasksList.all
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    list = TasksList.find(params[:tasks_list_id])
    @task = list.tasks.create(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      flash[:alert] = "Invalid Title"
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


private

  def task_params
    params.require(:task).permit(:title, :completed, :notes, :due, :start, :tasks_list_id)
  end
end
