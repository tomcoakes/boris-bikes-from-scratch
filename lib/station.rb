require_relative 'bike_container'

class Station

  include BikeContainer

  attr_reader :bike_rack

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

end