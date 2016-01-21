class Task < ActiveRecord::Base
  belongs_to :tasks_lists

  def self.past_due
   past_due = []
   tasks = Task.all
   tasks.each do |task|
   require "pry"; binding.pry
     if Date.new > task.due
       past_due.push(task)
     end
   end
   past_due
  end
end
