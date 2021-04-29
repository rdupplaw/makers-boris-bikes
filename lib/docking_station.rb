require_relative 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bike available' if bike.nil?
    released_bike, @bike = bike, nil
    released_bike
  end

  def dock(bike_to_dock)
    @bike = bike_to_dock
  end
end
