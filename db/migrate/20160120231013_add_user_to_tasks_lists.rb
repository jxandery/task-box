class AddUserToTasksLists < ActiveRecord::Migration
  def change
    add_reference :tasks_lists, :user, index: true, foreign_key: true
  end
end
