require_relative 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bike available' if bike.nil?
    Bike.new
  end

  def dock(bike_to_dock)
    @bike = bike_to_dock
  end
end
