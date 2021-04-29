require_relative 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike_to_dock)
    @bike = bike_to_dock
  end
end
