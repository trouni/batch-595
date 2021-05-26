require_relative 'task'
require_relative 'repository'
require_relative 'controller'

task1 = Task.new('Learn MVC! 💪')
task2 = Task.new('Code a Cookbook App! 👨‍🍳')

repository = Repository.new
repository.add_task(task1)
repository.add_task(task2)

controller = Controller.new(repository)

# # List all the tasks
# controller.list

# # Create a task
# controller.create

# # Create a task
# controller.create

# # List all the tasks
# controller.list

# # Mark a task as finished
# controller.mark_task_as_finished

# # List all the tasks
# controller.list