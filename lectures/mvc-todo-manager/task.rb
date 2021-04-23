class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @finished = false
  end

  def mark_as_finished!
    @finished = true
  end

  def finished?
    @finished
  end
end