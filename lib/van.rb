require_relative 'bike_container'

class Van
  include BikeContainer

  def initialize
    @capacity = 10
    @bike_rack = []
  end

  def load_broken_bikes(station)
    station.release_broken_bikes.each do |bike|
      @bike_rack << bike
    end
    @bike_rack # Can I possibly get rid of this line?
  end

end