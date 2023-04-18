Task Tracker Class Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

class TaskTracker
  def initialize
  end

  def add_task(task) # task is a string
    # Returns nothing
  end

  def show_list
    # Returns a list of tasks as an array
  end

  def mark_as_complete(task) # task is a string
    # Removes the given task from the list
  end
end

3. Create Examples as Tests

# 1
todo_tracker = TaskTracker.new
todo_tracker.add_task("Walk the dog")
todo_tracker.add_task("Unwalk the dog")
todo_tracker.show_list 
=> Walk the dog
Unwalk the dog

# 2
todo_tracker = TaskTracker.new
todo_tracker.add_task("Walk the dog")
todo_tracker.add_task("Unwalk the dog")
todo_tracker.mark_as_complete("Walk the dog")
todo_tracker.show_list
=> Unwalk the dog

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.