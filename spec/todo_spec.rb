require "todo"

describe Todo do
  context "when adding a task" do
    it "adds it to the @todo hash with the value 'incomplete'" do
      todo = Todo.new("get milk")
      result = todo.task
      expect(result).to eq "get milk"
    end

    #it "changes the status to complete" do
     # todo = Todo.new("get milk")
      # result = todo.mark_done!
     # expect(result).to eq "complete"
    # end

    it "checks if the todo is completed" do
      todo = Todo.new("get milk")
      todo.mark_done!
      result = todo.done?
      expect(result).to eq true
    end
  end
end