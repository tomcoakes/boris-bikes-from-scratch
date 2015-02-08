require_relative 'bike_container'

class Garage
  include BikeContainer

  def initialize
    @bike_rack = []
  end

  def accept(broken_bike)
    broken_bike.fix!
    dock(broken_bike)
  end

end