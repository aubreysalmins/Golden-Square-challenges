require "todo"

RSpec.describe Todo do
  it "checks if a task has been done" do
    todo = Todo.new("Wash the dog")
    todo.mark_done!
    expect(todo.done?).to eq true
  end

  it "checks if a task hasn't been done" do
    todo = Todo.new("Wash the dog")
    expect(todo.done?).to eq false
  end
end