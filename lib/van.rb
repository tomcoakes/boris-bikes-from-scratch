require_relative 'bike_container'

class Van
  include BikeContainer

  def initialize
    @capacity = 10
  end

  def location
    @location ||= "garage"
  end

  def travel_to(destination)
    @location = destination
  end

end