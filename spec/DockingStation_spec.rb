require 'DockingStation'
describe DockingStation do
  describe 'responds to #release_bike' do
    subject { DockingStation.new }
    it { is_expected.to respond_to(:release_bike) }
  end
end
