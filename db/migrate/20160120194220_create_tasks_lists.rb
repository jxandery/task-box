class CreateTasksLists < ActiveRecord::Migration
  def change
    create_table :tasks_lists do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
