require_relative 'task.rb'

class TodoList

  def initialize()
    @tasks = []
  end

  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task
  end

end

# task1 = Task.new("take out dog", "monday 8th")
# task2 = Task.new("grocery shopping", "dec 15")
# task3 = Task.new("presto load", "dec 17")
#
# todo1 = TodoList.new()
