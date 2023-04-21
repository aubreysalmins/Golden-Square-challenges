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

  it "returns completed todos" do
    todo_list = TodoList.new
    todo = Todo.new("Walk dog")
    todo_list.add(todo)
    expect(todo_list.complete).to eq []
  end

  it "returns an incomplete task" do
    todo_list = TodoList.new
    todo = Todo.new("Walk dog")
    todo_list.add(todo)
    todo1 = Todo.new("Wash car")
    todo_list.add(todo1)
    todo.mark_done!
    expect(todo_list.incomplete).to eq [todo1]
  end

  it "returns multiple completed tasks" do
    todo_list = TodoList.new
    todo = Todo.new("Walk dog")
    todo_list.add(todo)
    todo1 = Todo.new("Wash car")
    todo_list.add(todo1)
    todo.mark_done!
    todo1.mark_done!
    expect(todo_list.complete).to eq [todo, todo1]
  end

  
end

