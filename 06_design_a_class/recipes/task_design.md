Task Tracker Class Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

2. Design the Class Interface

class TaskTracker
  def initialize
    
  end

  def add_task(task) # task is a string
    # Throws an exception if no task is given
    # Returns nothing
  end

  def show_list
    # Throws an exception if no task is set
    # Otherwise, returns a list of tasks as an array
  end
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
todo_tracker = TaskTracker.new
todo_tracker.add_task("Walk the dog")
todo_tracker.add_task("Unwalk the dog")
todo_tracker.show_list 
=> Walk the dog
Unwalk the dog

# 2
todo_tracker = TaskTracker.new
todo_tracker.add_task("")
=> Not a valid string

# 3
todo_tracker = TaskTracker.new
todo_tracker.show_list
=> You haven't given a todo yet!

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.