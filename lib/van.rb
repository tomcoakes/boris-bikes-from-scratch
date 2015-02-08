require_relative 'bike_container'

class Van
  include BikeContainer

  def initialize
    @capacity = 10
    @bike_rack = []
  end


# THIS METHOD GETS THE STATION TO DO THE RELEASING ON ITS OWN END
  def load_broken_bikes(station)
    station.release_broken_bikes.each do |bike|
      @bike_rack << bike
    end
  end

# AN ALTERNATIVE WAY TO DO THIS WOULD BE AS FOLLOWS, BUT IT CALLS ANOTHER
# CLASS'S METHOD WITHIN ITS OWN METHOD, WHICH I THOUGHT WAS BAD
  # def load_broken_bikes(station)
  #   station.broken_bikes.each do |bike|
  #     self.dock(station.release(bike))
  #   end
  # end

end