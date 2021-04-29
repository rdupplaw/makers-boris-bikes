require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bike available' if empty?
    released_bike = @bikes.pop
  end

  def dock(bike_to_dock)
    raise 'Docking station full' if full?
    @bikes << bike_to_dock
  end

  private

  def full?
    bikes.length >= @capacity
  end

  def empty?
    bikes.empty?
  end
end
