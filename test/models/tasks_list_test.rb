require 'test_helper'

class TasksListTest < ActiveSupport::TestCase
  test 'it should be invalid without a title' do
    taskslist = TasksList.new
    refute(taskslist.valid?)
  end
end
