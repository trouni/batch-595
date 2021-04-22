require_relative 'chef'

class Restaurant
  attr_reader :name, :location, :cuisine
  attr_accessor :seats

  # self refers to the Restaurant class
  def self.cuisines
    %w[japanese thai sushi]
  end

  def initialize(name, location, cuisine, seats, chef_name)
    @name = name # string
    @location = location # string
    @cuisine = cuisine # string
    @seats = seats # integer

    # `self` refers to the instance on which the instance method is called
    @chef = Chef.new(chef_name, self)
    @reservations = []
  end

  def open?
    # called on yakiniku.open?
    # `self` here refers to the `yakiniku` instance / whatever is in front of the `.open?`
    Time.now.hour >= 17 && Time.now.hour <= 20
  end

  def book(customer)
    @reservations << customer
  end
end
