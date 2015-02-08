module BikeContainer

  DEFAULT_CAPACITY = 10

  def dock(bike_to_be_docked)
    bike_rack << bike_to_be_docked
  end

  def release(bike_to_be_docked)
    bike_rack.pop
  end

  def bike_count
    bike_rack.length
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def bike_rack
    @bike_rack
  end

end