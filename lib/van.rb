require_relative 'bike_container'

class Van
  include BikeContainer

  def location
    @location ||= "garage"
  end

  def travel_to(destination)
    @location = destination
  end

end