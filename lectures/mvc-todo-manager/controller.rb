require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new # doesn't hold any STATE / instance variables
  end

  def list
    display
  end

  def create
    # Ask user for a task description
    description = @view.ask_user_for_description
    # Create/initialize a Task
    task = Task.new(description)
    # Add the task to the repository
    @repository.add_task(task)
  end

  def mark_task_as_finished
    # Show all of the tasks
    display
    # Ask the user for the index of the task to update
    idx_of_task_to_finish = @view.ask_user_for_task_index
    # Fetch the requested task
    task = @repository.find(idx_of_task_to_finish)
    # Mark the task as finished
    task.mark_as_finished!
  end

  private

  def display
    # Retrieve the tasks from the repository
    tasks = @repository.all
    # Ask the view to display the tasks
    @view.display(tasks)
  end
end