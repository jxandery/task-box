class AddTasksListsToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :tasks_list, index: true, foreign_key: true
  end
end
