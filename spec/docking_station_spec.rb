require 'docking_station'
describe DockingStation do
  it 'responds to #release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  describe '.new' do
    it 'can take an argument which sets capacity of bikes' do
      station = DockingStation.new(40)
      40.times {station.dock(Bike.new)}
      expect {station.dock(Bike.new)}.to raise_error(RuntimeError)
    end

    it 'has a default capacity of 20' do
      station = DockingStation.new
      20.times {station.dock(Bike.new)}
      expect {station.dock(Bike.new)}.to raise_error(RuntimeError)
    end
  end

  describe '#release_bike' do
    context 'when there is no bike available' do
      it 'raises an error' do
        expect { DockingStation.new.release_bike }.to raise_error(RuntimeError)
      end
    end
    context 'when a bike has been docked' do
      it 'returns that bike and removes it from the docking station' do
        station = DockingStation.new
        bike = Bike.new
        station.dock(bike)
        released_bike = station.release_bike

        expect(released_bike).to eq(bike)
        expect(station.bikes).to eq([])
      end
    end
  end

  describe '#dock' do
    it 'stores a given Bike instance in @bike' do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)

      expect(station.bikes).to eq([bike])
    end

    context 'when dock is at capacity' do
      station = DockingStation.new
      bike = Bike.new
      DockingStation::DEFAULT_CAPACITY.times { station.dock(bike) }

      it 'raises an error' do
        expect { station.dock(Bike.new) }.to raise_error(RuntimeError)
      end
    end
  end

  describe '#bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)

    it 'returns the stored bike' do
      expect(station.bikes).to eq([bike])
    end
  end
end
