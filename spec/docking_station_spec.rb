require 'docking_station'
describe DockingStation do
  it 'responds to #release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  describe '#release_bike' do
    it 'returns a Bike that responds to #working?' do
      expect(DockingStation.new.release_bike).to respond_to(:working?)
    end
  end

  describe '#dock' do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)

    it 'stores a given Bike instance in @bike' do
      expect(station.bike).to eq(bike)
    end
  end

  describe '#bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)

    it 'returns the stored bike' do
      expect(station.bike).to eq(bike)
    end
  end
end
