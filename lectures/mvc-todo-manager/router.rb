class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = capture_user_input
      dispatch(action)
    end
  end

  private

  def print_actions
    puts '-' * 40
    puts '1. List all of the tasks'
    puts '2. Create a task'
    puts '3. Mark a task as finished'
    puts '-' * 40
    puts
  end

  def capture_user_input
    print 'What would you like to do? >> '
    puts
    gets.chomp.to_i
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_task_as_finished
    else puts 'Please select one of the options above...'
    end
  end
end