require "todo_list"

RSpec.describe TodoList do
  context "initially" do
    it "has an empty list of todos" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end 
  end

  
end