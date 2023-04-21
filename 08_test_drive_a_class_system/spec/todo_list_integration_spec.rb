require "todo_list"
require "todo"

RSpec.describe "integration" do
  context "after adding some todos" do
    it "lists out the todos added" do
      todo_list = TodoList.new
      todo = Todo.new("Walk dog")
      todo1 = Todo.new("Clean car")
      todo_list.add(todo)
      todo_list.add(todo1)
      expect(todo_list.incomplete).to eq [todo, todo1]
    end
  end

  it "returns all complete todos" do
    todo_list = TodoList.new
    todo = Todo.new("Walk dog")
    todo_list.add(todo)
    expect(todo_list.complete).to eq []
  end
end

