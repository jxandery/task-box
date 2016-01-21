class TasksListsController < ApplicationController

  def new
    @tasks_list = TasksList.new
  end

  def index
  end

  def edit
    @tasks_list= TasksList.find(params[:id])
  end

  def create
    @tasks_list = current_user.tasks_lists.create(tasks_list_params)
    if @tasks_list.save
      redirect_to tasks_path
    else
      flash[:alert] = "Invalid Title"
      render 'new'
    end
  end

  def update
    @tasks_list = TasksList.find(params[:id])
    if @tasks_list.update(tasks_list_params)
      redirect_to tasks_path
    else
      flash[:alert] = "Invalid Title"
      render :edit
    end
  end

  def destroy
    @tasks_list = TasksList.find(params[:id])
    @tasks_list.tasks.destroy_all
    redirect_to tasks_path
  end

  private

  def tasks_list_params
    params.require(:tasks_list).permit(:title, :description)
  end
end
