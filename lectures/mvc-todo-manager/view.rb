class View
  def display(tasks)
    puts '-' * 40
    puts 'Here are all your tasks:'
    puts
    tasks.each_with_index do |task, idx|
      puts "#{idx + 1}. [#{task.finished? ? 'x' : ' '}] #{task.description}"
    end
    puts '-' * 40
    puts
  end

  def ask_user_for_description
    print "Describe your task: >> "
    gets.chomp
  end

  def ask_user_for_task_index
    print "Which task would you like to mark as finished? >> "
    gets.chomp.to_i - 1
  end
end