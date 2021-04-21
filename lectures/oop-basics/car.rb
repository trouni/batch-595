class Car
  attr_reader :engine_started, :turboboost
  attr_accessor :color # is a shortcut for both attr_reader and attr_writer

  # attr_reader :color is a shortcut to define this method:
  # # def color
  # #   @color
  # # end

  # attr_writer :color is a shortcut to define this method:
  # # def color=(color)
  # #   @color = color
  # # end

  # CONSTRUCTOR
  # initialize is called only once (when using Car.new)
  def initialize(color, turboboost = false)
    # STATE - instance variables (@variables)
    @engine_started = false # boolean
    @color = color # string
    @turboboost = turboboost # boolean
  end

  # instance method
  def start!
    crank_engine
    pump_pistons
    spark_plugs
    @engine_started = true
  end

  # The instance methods below the `private` keyword are only accessible within the class
  private

  def crank_engine
    puts 'Cranking engine...'
  end

  def pump_pistons
    puts 'Pumping pistons...'
  end

  def spark_plugs
    puts 'Sparking plugs...'
  end
end

puts "Creating Luke's car..."
luke_car = Car.new('neon green', true)

puts "Is Luke's car started?"
p luke_car.engine_started # given by the attr_reader

puts "Luke's car is currently #{luke_car.color}" # given by the attr_reader

puts "Let's paint the car red!"
luke_car.color = 'red' # given by the attr_writer
# luke_car.turboboost = false # this doesn't work without the attr_writer

puts "Luke's car is now #{luke_car.color}"