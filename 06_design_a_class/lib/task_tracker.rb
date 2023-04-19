class TaskTracker
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end
  
  def show_list
    return @tasks
  end

  def mark_as_complete(task)
    fail "No such task" unless @tasks.include? task
    @tasks.delete(task)
  end
end