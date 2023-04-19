require "task_tracker"

describe TaskTracker do
  context "given an empty string" do
    it "returns an empty string" do
      todo_tracker = TaskTracker.new
      expect(todo_tracker.show_list).to eq []
    end
  end

  context "given two todos" do
    it "returns both todos as a list" do
      todo_tracker = TaskTracker.new
      todo_tracker.add_task("Walk the dog")
      todo_tracker.add_task("Unwalk the dog")
      expect(todo_tracker.show_list).to eq ["Walk the dog", "Unwalk the dog"]
    end
  end

  context "when a task is marked as complete" do
    it  "removes the task from the list" do
      todo_tracker = TaskTracker.new
      todo_tracker.add_task("Walk the dog")
      todo_tracker.add_task("Unwalk the dog")
      todo_tracker.mark_as_complete("Walk the dog")
      expect(todo_tracker.show_list).to eq ["Unwalk the dog"]
    end
  end

  context "when we try to complete a non_existent task" do
    it "fails" do
      todo_tracker = TaskTracker.new
      todo_tracker.add_task("Walk the dog")
      expect { todo_tracker.mark_as_complete("Unwalk the dog") }.to raise_error "No such task"
    end
  end
end