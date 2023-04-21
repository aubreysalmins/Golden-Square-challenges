require "todo"

class TodoList
  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def incomplete
    incompleted = []
    @todos.each { |todo|
      if todo.done? == false
        incompleted << todo
      end
    }
    return incompleted
  end

  def complete
    completed = []
    @todos.each { |todo|
      if todo.done? == true
        completed << todo
      end
    }
    return completed
  end

  def give_up!
    # Marks all todos as complete
    @todos.each { |todo| todo.mark_done! }
  end
end