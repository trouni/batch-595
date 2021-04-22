class Chef
  attr_reader :restaurant

  def initialize(name, restaurant)
    @name = name # string
    @restaurant = restaurant # instance of Restaurant
  end
end