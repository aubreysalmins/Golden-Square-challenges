class Todo
  def initialize(task) # task is a string
    @task = task
    @done = []
  end

  def task
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @done << @task
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    (@done.include? @task) ? true : false
  end
end