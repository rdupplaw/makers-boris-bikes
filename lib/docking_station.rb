require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bike available' if bikes.empty?
    released_bike = @bikes.pop
  end

  def dock(bike_to_dock)
    raise 'Docking station full' if bikes.length >= 20
    @bikes << bike_to_dock
  end
end
