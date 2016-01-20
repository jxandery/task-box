class TasksController < ApplicationController

  def new
    @tasks_list = TasksList.new
  end

  def index
    @tasks_list = TasksList.new
    @lists = TasksList.all
  end
end
