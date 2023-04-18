require "task_tracker"

describe TaskTracker do
  context "given two todos" do
    it "returns both todos as a list" do
      todo_tracker = TaskTracker.new
      todo_tracker.add_task("Walk the dog")
      todo_tracker.add_task("Unwalk the dog")
      todo_tracker.show_list
    end
  end
end