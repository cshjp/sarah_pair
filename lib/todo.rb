class Todo
  def initialize(task) # task is a string
    @todo = { todo: task, status: "incomplete"}
  end

  def task
    @todo[:todo]
  end

  def mark_done!
    @todo[:status] = "complete"
  end

  def done?
    if @todo[:status] == "complete"
      return true
    else
      return false
    end
  end
end