require_relative 'bike_container'

class Van
  include BikeContainer

  def initialize
    @capacity = 10
    @bike_rack = []
  end

  def load_broken_bikes_from(station)
    station.release_broken_bikes.each do |bike|
      bike_rack << bike
    end
  end

  def unload_broken_bikes_at_the(location)
    bike_rack.each do |broken_bike|
      location.accept(broken_bike)
      bike_rack.delete(broken_bike)
    end
  end

# AN ALTERNATIVE WAY TO DO THIS WOULD BE AS FOLLOWS, BUT IT CALLS ANOTHER
# CLASS'S METHOD WITHIN ITS OWN METHOD, WHICH I THOUGHT WAS BAD
  # def load_broken_bikes_from(station)
  #   station.broken_bikes.each do |bike|
  #     self.dock(station.release(bike))
  #   end
  # end

end