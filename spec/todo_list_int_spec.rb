require "todo_list"
require "todo"

describe TodoList do
  describe '#add' do
    context "when given a todo" do
      it "adds a Todo to Todolist" do
        todo = Todo.new("get milk")
        todolist = TodoList.new()
        result = todolist.add(todo)
        expect(result).to eq [todo]
      end
    end
  end

  describe '#incomplete' do
    it "returns all non-done todos" do
      todo1 = Todo.new("get milk")
      todo2 = Todo.new("cook dinner")
      todolist = TodoList.new()
      todolist.add(todo1)
      todolist.add(todo2)
      expect(todolist.incomplete).to eq [todo1, todo2]
    end
  end

  describe '#complete' do
    it "returns all done todos" do
      todo1 = Todo.new("get milk")
      todo2 = Todo.new("cook dinner")
      todo1.mark_done!
      todolist = TodoList.new()
      todolist.add(todo1)
      todolist.add(todo2)
      expect(todolist.complete).to eq [todo1]
    end
  end
end
