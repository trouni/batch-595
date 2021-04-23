class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end
end