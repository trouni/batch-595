require_relative 'restaurant'

class FineDining < Restaurant
  def initialize(name, location, cuisine, seats, stars)
    super(name, location, cuisine, seats)
    @stars = stars # integer
  end
end