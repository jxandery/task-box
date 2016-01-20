class TasksList < ActiveRecord::Base
  validates :title, presence: true
end

