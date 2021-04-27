require 'DockingStation'
describe DockingStation do
  describe 'responds to #release_bike' do
    subject { DockingStation.new }
    it { is_expected.to respond_to(:release_bike) }
  end
  describe '#release_bike returns a Bike that responds to #working?' do
    subject { DockingStation.new.release_bike }
    it { is_expected.to respond_to(:working?) }
  end
end
