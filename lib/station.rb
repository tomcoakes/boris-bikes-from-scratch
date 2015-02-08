require_relative 'bike_container'

class Station
  include BikeContainer

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bike_rack = []
  end

  def broken_bikes
    self.bike_rack.select {|bike| bike.broken?}
  end

  def release_broken_bikes
    self.broken_bikes.each do |bike|
      bike_rack.delete(bike)
    end
  end

end
