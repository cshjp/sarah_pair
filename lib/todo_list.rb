class TodoList
  def initialize
    @todolist = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todolist << todo
  end

  def incomplete
    # Returns all non-done todos
    incomplete = []
    @todolist.each do |todo|
      if !todo.done?
        incomplete << todo
      end
    end
    return incomplete
  end

  def complete
    # Returns all complete todos
    completed = []
    @todolist.each do |todo|
      if todo.done?
        completed << todo
      end
    end
    return completed
  end

  def give_up!
    # Marks all todos as complete
    @todolist.each do |todo|
      todo.mark_done!
    end
  end
end

